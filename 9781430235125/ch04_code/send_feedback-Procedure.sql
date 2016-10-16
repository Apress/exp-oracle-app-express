Create or replace procedure  send_feedback
          ( p_workspace apex_workspaces.workspace%type
          , p_send_to   varchar2
          ) 
is
  l_mail_id      number;
  l_clob         clob;
  l_blob         blob;
  l_mail_blob    blob;
  l_dest_offset  number  := 1;
  l_src_offset   number  := 1;
  l_amount       integer := dbms_lob.lobmaxsize;
  l_blob_csid    number  := dbms_lob.default_csid;
  l_lang_ctx     integer := dbms_lob.default_lang_ctx;
  l_warning      integer;
  -- The name of the Workspace you want to export the Feedback from
  l_workspace_id apex_workspaces.workspace_id%type;
  -- Search string for removing all "trash". Real SQL starts from there
  l_search       varchar2(255) := 'set define off';
begin
  -- Get the ID of the Workspace and set the environment
  l_workspace_id := apex_util.find_security_group_id ( p_workspace );
  wwv_flow_api.set_security_group_id( l_workspace_id );
  -- Create the mail object
  l_mail_id   := apex_mail.send
                   ( p_to    => p_send_to
                   , p_from  => 'apex@oracle.com'
                   , p_subj  => 'Feedback Export from Deployment to Development'
                   , p_body  => 'See the attachment.'
                   );
  -- Create the CLOB
  -- Export the Feedback to Development for the Workspace provided
  l_clob := 
     wwv_flow_utilities.export_feedback_to_development ( l_workspace_id );
  -- Convert to BLOB
  dbms_lob.createtemporary ( lob_loc => l_blob
                           , cache   => true
                           );      
  dbms_lob.converttoblob ( l_blob
                         , l_clob
                         , l_amount
                         , l_dest_offset
                         , l_src_offset
                         , l_blob_csid
                         , l_lang_ctx
                         , l_warning 
                         );  
  -- Remove all "trash", so only real SQL is left over
 dbms_lob.createtemporary ( lob_loc => l_mail_blob
                          , cache   => true
                          );  
 dbms_lob.copy(  l_mail_blob
               , l_blob
               , dbms_lob.lobmaxsize
               , 1
               , dbms_lob.instr( lob_loc => l_blob 
                                , pattern => utl_raw.cast_to_raw(l_search)
                                )
               );
 -- Add the file as a BLOB attachment to the mail                             
 apex_mail.add_attachment 
       ( p_mail_id    => l_mail_id
       , p_attachment => l_mail_blob
       , p_filename   => 'feedback_export_from_'||lower(p_workspace)||'.sql'
       , p_mime_type  => 'application/text'
       );
  commit;
end ;
