/* Formatted on 2011/02/27 22:30 (Formatter Plus v4.8.8) */
CREATE OR REPLACE PACKAGE BODY ora_experts.tab_form_emp_pkg
AS
   PROCEDURE disable_foreign_constraints
   IS
   BEGIN
      FOR c IN (SELECT   constraint_name, table_name
                    FROM user_constraints
                   WHERE table_name IN ('EMP', 'DEPT')
                     AND constraint_type = 'R'
                ORDER BY table_name)
      LOOP
         EXECUTE IMMEDIATE    'ALTER TABLE '
                           || c.table_name
                           || ' DISABLE CONSTRAINT '
                           || c.constraint_name;
      END LOOP;
   END disable_foreign_constraints;

   PROCEDURE enable_foreign_constraints
   IS
   BEGIN
      FOR c IN (SELECT   constraint_name, table_name
                    FROM user_constraints
                   WHERE table_name IN ('EMP', 'DEPT')
                     AND constraint_type = 'R'
                ORDER BY table_name)
      LOOP
         EXECUTE IMMEDIATE    'ALTER TABLE '
                           || c.table_name
                           || ' ENABLE CONSTRAINT '
                           || c.constraint_name;
      END LOOP;
   END enable_foreign_constraints;

   PROCEDURE restore_tables
   IS
   -- We will use this process to restore our date after testing.
   BEGIN
      FOR c IN (SELECT   constraint_name, table_name
                    FROM user_constraints
                   WHERE table_name IN ('EMP', 'DEPT')
                     AND constraint_type = 'R'
                ORDER BY table_name)
      LOOP
         EXECUTE IMMEDIATE    'ALTER TABLE '
                           || c.table_name
                           || ' DISABLE CONSTRAINT '
                           || c.constraint_name;
      END LOOP;

      EXECUTE IMMEDIATE 'TRUNCATE TABLE dept DROP STORAGE';

      EXECUTE IMMEDIATE 'TRUNCATE TABLE emp DROP STORAGE';

      INSERT INTO dept
         SELECT *
           FROM dept_bkp;

      INSERT INTO emp
         SELECT *
           FROM emp_bkp;

      COMMIT;

      FOR c IN (SELECT   constraint_name, table_name
                    FROM user_constraints
                   WHERE table_name IN ('EMP', 'DEPT')
                     AND constraint_type = 'R'
                ORDER BY table_name)
      LOOP
         EXECUTE IMMEDIATE    'ALTER TABLE '
                           || c.table_name
                           || ' ENABLE CONSTRAINT '
                           || c.constraint_name;
      END LOOP;
   END restore_tables;

   PROCEDURE delete_emp_row (p_message OUT VARCHAR2)
   IS
      v_row     INTEGER;
      v_count   INTEGER := 0;
   BEGIN
      FOR i IN 1 .. apex_application.g_f01.COUNT
      LOOP
         v_row := apex_application.g_f01 (i);

         DELETE FROM emp
               WHERE empno = apex_application.g_f02 (v_row);

         -- g_f02 is the hidden column containing
         -- the primary key of the EMP table (empno)
         v_count := v_count + 1;
      END LOOP;

      p_message := v_count || ' row(s) deleted.';
   END delete_emp_row;

   PROCEDURE save_emp_custom (p_message OUT VARCHAR2)
   IS
      v_ins_count   INTEGER := 0;
      v_upd_count   INTEGER := 0;
   BEGIN
      FOR i IN 1 .. apex_application.g_f02.COUNT
      LOOP
         BEGIN
            IF apex_application.g_f02 (i) IS NOT NULL
            THEN
               IF apex_application.g_f10 (i) <>
                     wwv_flow_item.md5 (apex_application.g_f02 (i),
                                        apex_application.g_f03 (i),
                                        apex_application.g_f04 (i),
                                        apex_application.g_f05 (i),
                                        apex_application.g_f06 (i),
                                        apex_application.g_f07 (i),
                                        apex_application.g_f08 (i),
                                        apex_application.g_f09 (i)
                                       )
               THEN
                  UPDATE emp
                     SET ename = apex_application.g_f03 (i),
                         job = apex_application.g_f04 (i),
                         mgr = apex_application.g_f05 (i),
                         hiredate = apex_application.g_f06 (i),
                         sal = apex_application.g_f07 (i),
                         comm = apex_application.g_f08 (i),
                         deptno = apex_application.g_f09 (i)
                   WHERE empno = apex_application.g_f02 (i);

                  v_upd_count := v_upd_count + 1;
               END IF;
            ELSE
               INSERT INTO emp
                           (ename,
                            job,
                            mgr,
                            hiredate,
                            sal,
                            comm,
                            deptno
                           )
                    VALUES (apex_application.g_f03 (i),
                            apex_application.g_f04 (i),
                            apex_application.g_f05 (i),
                            apex_application.g_f06 (i),
                            apex_application.g_f07 (i),
                            apex_application.g_f08 (i),
                            apex_application.g_f09 (i)
                           );

               v_ins_count := v_ins_count + 1;
            END IF;
         EXCEPTION
            WHEN OTHERS
            THEN
               p_message := p_message || SQLERRM;
         END;
      END LOOP;

      IF v_ins_count > 0 OR v_upd_count > 0
      THEN
         p_message :=
               p_message
            || v_ins_count
            || ' row(s) inserted. '
            || v_upd_count
            || ' row(s) updated.';
      END IF;
   EXCEPTION
      WHEN OTHERS
      THEN
         p_message := SQLERRM;
   END save_emp_custom;

   FUNCTION validate_emp_comm
      RETURN VARCHAR2
   IS
      v_message   VARCHAR2 (4000);
   BEGIN
      FOR i IN 1 .. apex_application.g_f02.COUNT
      LOOP
         IF     apex_application.g_f09 (i) <> 30
            AND apex_application.g_f08 (i) IS NOT NULL
         THEN
            v_message :=
                  v_message
               || '<br/>'
               || 'Commission is allowed for the sales department only.'
               || ' (Row '
               || i
               || ')';
         END IF;
      END LOOP;

      v_message := LTRIM (v_message, '<br/>');
      RETURN v_message;
   END validate_emp_comm;

   FUNCTION compare_checksum_change (p_array IN NUMBER)
      RETURN BOOLEAN
   IS
   BEGIN
      IF apex_application.g_f02 (p_array) IS NOT NULL
      THEN
         IF apex_application.g_fcs (p_array) <>
               wwv_flow_item.md5 (apex_application.g_f02 (p_array),
                                  apex_application.g_f03 (p_array),
                                  apex_application.g_f04 (p_array),
                                  apex_application.g_f05 (p_array),
                                  apex_application.g_f06 (p_array),
                                  apex_application.g_f07 (p_array),
                                  apex_application.g_f08 (p_array),
                                  apex_application.g_f09 (p_array),
                                  apex_application.g_f11 (p_array)
                                 )
         THEN
            RETURN FALSE;
         ELSE
            RETURN TRUE;
         END IF;
      ELSE
         RETURN TRUE;
      END IF;
   END compare_checksum_change;

   FUNCTION compare_checksum_table (p_array IN NUMBER)
      RETURN BOOLEAN
   IS
      v_empno          NUMBER;
      v_emp_checksum   VARCHAR2 (40);
   BEGIN
      IF apex_application.g_f02 (p_array) IS NOT NULL
      THEN
         v_empno := apex_application.g_f02 (p_array);

         SELECT wwv_flow_item.md5 (empno,
                                   ename,
                                   job,
                                   mgr,
                                   hiredate,
                                   sal,
                                   comm,
                                   deptno,
                                   valid
                                  )
           INTO v_emp_checksum
           FROM emp
          WHERE empno = v_empno;

         IF apex_application.g_fcs (p_array) <> v_emp_checksum
         THEN
            RETURN FALSE;
         ELSE
            RETURN TRUE;
         END IF;
      ELSE
         RETURN TRUE;
      END IF;
   END compare_checksum_table;

   FUNCTION validate_data_integrity
      RETURN VARCHAR2
   IS
      v_error   VARCHAR2 (4000);
   BEGIN
      FOR i IN 1 .. apex_application.g_f02.COUNT
      LOOP
         IF NOT compare_checksum_change (i)
            AND NOT compare_checksum_table (i)
         THEN
            v_error :=
                  v_error
               || '<br/>'
               || 'Row '
               || i
               || ': The version of the data in the '
               || 'table has been change since the last page rendering. Click <a href="f?p='
               || v ('APP_ID')
               || ':'
               || v ('APP_PAGE_ID')
               || ':'
               || v ('APP_SESSION')
               || '">here</a> to reload the page.';
         END IF;
      END LOOP;

      v_error := LTRIM (v_error, '<br/>');
      RETURN v_error;
   END validate_data_integrity;

   PROCEDURE get_job
   IS
      v_search   emp.job%TYPE;
   BEGIN
      EXECUTE IMMEDIATE 'alter session set NLS_SORT=BINARY_CI';

      EXECUTE IMMEDIATE 'alter session set NLS_COMP=LINGUISTIC';

      v_search := REPLACE (wwv_flow.g_x01, '*', '%');

      FOR i IN (SELECT DISTINCT job
                           FROM emp
                          WHERE job LIKE '%' || v_search || '%')
      LOOP
         HTP.p (i.job);
      END LOOP;
   END get_job;

   FUNCTION get_manager_for_id (p_mgr IN NUMBER)
      RETURN VARCHAR2
   IS
      v_ename   emp.ename%TYPE;
   BEGIN
      FOR c IN (SELECT ename
                  FROM emp
                 WHERE empno = p_mgr)
      LOOP
         v_ename := c.ename;
      END LOOP;

      RETURN v_ename;
   END get_manager_for_id;

   PROCEDURE get_manager
   IS
      v_search   VARCHAR2 (255);
      v_output   VARCHAR2 (400);
   BEGIN
      EXECUTE IMMEDIATE 'alter session set NLS_SORT=BINARY_CI';

      EXECUTE IMMEDIATE 'alter session set NLS_COMP=LINGUISTIC';

      v_search := REPLACE (wwv_flow.g_x01, '*', '%');

      FOR i IN (SELECT ename, empno
                  FROM emp
                 WHERE ename LIKE '%' || v_search || '%'
                   AND empno IN (SELECT mgr
                                   FROM emp))
      LOOP
         v_output := i.ename || '|' || i.empno;
         HTP.p (v_output);
      END LOOP;
   END get_manager;

   FUNCTION get_autocomplete_key (
      p_value        IN   VARCHAR2,
      p_key_item     IN   VARCHAR2,
      p_rownum       IN   VARCHAR2,
      p_width        IN   NUMBER,
      p_process      IN   VARCHAR2,
      p_max_length   IN   NUMBER DEFAULT 80,
      p_size         IN   NUMBER DEFAULT 80
   )
      RETURN VARCHAR2
   IS
      v_rownum        VARCHAR2 (20);
      v_name          VARCHAR2 (5)    := 'f50';
      v_item          VARCHAR2 (20);
      v_item_html     VARCHAR2 (3000);
      v_key_item      VARCHAR2 (20);
      v_script        VARCHAR2 (1000);
      v_output_item   VARCHAR2 (4000);
      a_rownum        VARCHAR2 (400);
   BEGIN
      v_rownum := p_rownum;
      v_item := v_name || '_' || v_rownum;
      v_item_html :=
            '<input type="text" id="'
         || v_item
         || '" value="'
         || p_value
         || '" maxlength="'
         || p_max_length
         || '" size="'
         || p_size
         || '" name="'
         || v_name
         || '" '
         || 'autocomplete="off" class="ac_input"'
         || 'style="width:'
         || p_width
         || 'px">';
      v_key_item := p_key_item || '_' || v_rownum;
      v_script :=
            '<script type="text/javascript">'
         || '$(document).ready( function() {'
         || '$("#'
         || v_item
         || '").autocomplete(''APEX'', {'
         || 'apexProcess: '''
         || p_process
         || ''','
         || 'width: '
         || p_width
         || ','
         || 'multiple: false,'
         || 'matchContains: true,'
         || 'cacheLength: 1,'
         || 'max: 100,'
         || 'delay: 150,'
         || 'minChars: 1,'
         || 'matchSubset: false,'
         || 'x02: ''foo'','
         || 'x03: $(''#'
         || v_key_item
         || ''').val()'
         || '});'
         || '$("#'
         || v_item
         || '").result(function(event, data, formatted) {'
         || 'if (data){'
         || '$("#'
         || v_key_item
         || '").val(data[1]);'
         || '}'
         || '});'
         || '});'
         || '</script>';
      v_output_item := v_item_html || v_script;
      RETURN v_output_item;
   END get_autocomplete_key;

   FUNCTION get_autocomplete (
      p_item      IN   VARCHAR2,
      p_rownum    IN   VARCHAR2,
      p_width     IN   NUMBER,
      p_process   IN   VARCHAR2
   )
      RETURN VARCHAR2
   IS
      v_rownum   VARCHAR2 (20);
      v_item     VARCHAR2 (20);
      v_script   VARCHAR2 (1000);
   BEGIN
      v_rownum := p_rownum;
      v_item := p_item || '_' || v_rownum;
      v_script :=
            '<script type="text/javascript">'
         || '$(document).ready( function() {'
         || '$("#'
         || v_item
         || '").autocomplete(''APEX'', {'
         || 'apexProcess: '''
         || p_process
         || ''','
         || 'width: '
         || p_width
         || ','
         || 'multiple: false,'
         || 'matchContains: true,'
         || 'cacheLength: 1,'
         || 'max: 100,'
         || 'delay: 150,'
         || 'minChars: 1,'
         || 'matchSubset: false'
         || '});'
         || '});'
         || '</script>';
      RETURN v_script;
   END get_autocomplete;

   PROCEDURE create_emp_collection (p_deptno IN NUMBER, p_message OUT VARCHAR2)
   IS
      v_collection   VARCHAR2 (40) := 'EMP_DEPT';
   BEGIN
      IF apex_collection.collection_exists (v_collection)
      THEN
         apex_collection.delete_collection (v_collection);
         p_message := p_message || '<br/>' || 'Collection deleted.';
      END IF;

      apex_collection.create_collection_from_query
                      (v_collection,
                          'SELECT a.*,  wwv_flow_item.md5(empno, ename, job, '
                       || 'mgr, hiredate, sal, comm, deptno, valid)  '
                       || 'FROM EMP a WHERE deptno = '
                       || p_deptno
                      );
      p_message := p_message || '<br/>' || 'Collection created.';
      p_message := LTRIM (p_message, '<br/>');
   END create_emp_collection;

   PROCEDURE save_emp_coll_custom (p_message OUT VARCHAR2)
   IS
      v_ins_count    INTEGER       := 0;
      v_upd_count    INTEGER       := 0;
      v_collection   VARCHAR2 (40) := 'EMP_DEPT';
   BEGIN
      FOR i IN 1 .. apex_application.g_f02.COUNT
      LOOP
         BEGIN
            IF apex_application.g_f02 (i) IS NOT NULL
            THEN
               IF apex_application.g_f12 (i) <>
                     wwv_flow_item.md5 (apex_application.g_f03 (i),
                                        apex_application.g_f04 (i),
                                        apex_application.g_f05 (i),
                                        apex_application.g_f06 (i),
                                        apex_application.g_f07 (i),
                                        apex_application.g_f08 (i),
                                        apex_application.g_f09 (i),
                                        apex_application.g_f10 (i),
                                        apex_application.g_f11 (i)
                                       )
               THEN
                  apex_collection.update_member
                             (p_collection_name      => v_collection,
                              p_seq                  => apex_application.g_f02
                                                                           (i),
                              p_c001                 => apex_application.g_f03
                                                                           (i),
                              p_c002                 => apex_application.g_f04
                                                                           (i),
                              p_c003                 => apex_application.g_f05
                                                                           (i),
                              p_c004                 => TO_NUMBER
                                                           (apex_application.g_f06
                                                                           (i)
                                                           ),
                              p_c005                 => TO_DATE
                                                           (apex_application.g_f07
                                                                           (i)
                                                           ),
                              p_c006                 => TO_NUMBER
                                                           (apex_application.g_f08
                                                                           (i)
                                                           ),
                              p_c007                 => TO_NUMBER
                                                           (apex_application.g_f09
                                                                           (i)
                                                           ),
                              p_c008                 => TO_NUMBER
                                                           (apex_application.g_f10
                                                                           (i)
                                                           ),
                              p_c009                 => apex_application.g_f11
                                                                           (i),
                              p_c010                 => apex_application.g_f12
                                                                           (i),
                              p_c011                 => apex_application.g_f13
                                                                           (i)
                             );
                  v_upd_count := v_upd_count + 1;
               END IF;
            ELSE
               apex_collection.add_member
                             (p_collection_name      => v_collection,
                              p_c001                 => emp_seq.NEXTVAL,
                              p_c002                 => apex_application.g_f04
                                                                           (i),
                              p_c003                 => apex_application.g_f05
                                                                           (i),
                              p_c004                 => TO_NUMBER
                                                           (apex_application.g_f06
                                                                           (i)
                                                           ),
                              p_c005                 => TO_DATE
                                                           (apex_application.g_f07
                                                                           (i)
                                                           ),
                              p_c006                 => TO_NUMBER
                                                           (apex_application.g_f08
                                                                           (i)
                                                           ),
                              p_c007                 => TO_NUMBER
                                                           (apex_application.g_f09
                                                                           (i)
                                                           ),
                              p_c008                 => TO_NUMBER
                                                           (apex_application.g_f10
                                                                           (i)
                                                           ),
                              p_c009                 => apex_application.g_f11
                                                                           (i)
                             );
               v_ins_count := v_ins_count + 1;
            END IF;
         EXCEPTION
            WHEN OTHERS
            THEN
               p_message :=
                     p_message || '<br/>' || 'Row: ' || i || ' > ' || SQLERRM;
               p_message := LTRIM (p_message, '<br/>');
         END;
      END LOOP;

      IF v_ins_count > 0 OR v_upd_count > 0
      THEN
         p_message :=
               p_message
            || '<br/>'
            || v_ins_count
            || ' row(s) inserted. '
            || v_upd_count
            || ' row(s) updated.';
      END IF;

      p_message := LTRIM (p_message, '<br/>');
   EXCEPTION
      WHEN OTHERS
      THEN
         p_message := SQLERRM;
   END save_emp_coll_custom;

   PROCEDURE delete_emp_coll_custom (p_message OUT VARCHAR2)
   IS
      v_row          INTEGER;
      v_count        INTEGER       := 0;
      v_collection   VARCHAR2 (40) := 'EMP_DEPT';
   BEGIN
      FOR i IN 1 .. apex_application.g_f01.COUNT
      LOOP
         v_row := apex_application.g_f01 (i);
         apex_collection.update_member
                                     (p_collection_name      => v_collection,
                                      p_seq                  => apex_application.g_f02
                                                                        (v_row),
                                      p_c011                 => 'Y'
                                     );
         v_count := v_count + 1;
      END LOOP;

      p_message := v_count || ' row(s) deleted.';
   END delete_emp_coll_custom;

   PROCEDURE update_emp_coll_member (
      p_seq_id             IN   NUMBER,
      p_attribute_number   IN   NUMBER,
      p_attribute_value    IN   VARCHAR2
   )
   IS
      v_collection   VARCHAR2 (40)   := 'EMP_DEPT';
      v_number       NUMBER;
      v_date         DATE;
      v_message      VARCHAR2 (4000);
   BEGIN
      IF p_seq_id IS NOT NULL
      THEN
         IF p_attribute_number IN (4, 6, 7, 8)
         THEN
            v_number := TO_NUMBER (p_attribute_value);
         ELSIF p_attribute_number IN (5)
         THEN
            v_date := TO_DATE (p_attribute_value);
         END IF;

         apex_collection.update_member_attribute
             (p_collection_name      => v_collection,
              p_seq                  => p_seq_id,
              p_attr_number          => p_attribute_number,
              p_attr_value           => p_attribute_value
                                         );
      END IF;
   EXCEPTION
      WHEN OTHERS
      THEN
         v_message := SQLERRM;
         HTP.p (v_message);
   END update_emp_coll_member;

   FUNCTION validate_collection_data
      RETURN VARCHAR2
   IS
      v_message    VARCHAR2 (4000);
      v_checksum   VARCHAR2 (400);
   BEGIN
      FOR c IN (SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno,
                       valid, checksum, delete_flag
                  FROM emp_coll_v
                 WHERE checksum IS NOT NULL)
      LOOP
         SELECT wwv_flow_item.md5 (empno,
                                   ename,
                                   job,
                                   mgr,
                                   hiredate,
                                   sal,
                                   comm,
                                   deptno,
                                   valid
                                  )
           INTO v_checksum
           FROM emp
          WHERE empno = c.empno;

         IF c.checksum <> v_checksum
         THEN
            v_message :=
                  v_message
               || '<br/>'
               || 'Empno: '
               || c.empno
               || ': Snapshot too old.';
         END IF;
      END LOOP;

      v_message := LTRIM (v_message, '<br/>');
      RETURN v_message;
   END validate_collection_data;

   PROCEDURE update_table_from_collection (
      p_deptno    IN       NUMBER,
      p_message   OUT      VARCHAR2
   )
   IS
      v_ins_count   INTEGER         := 0;
      v_upd_count   INTEGER         := 0;
      v_del_count   INTEGER         := 0;
      v_message     VARCHAR2 (4000);
   BEGIN
      FOR c IN (SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno,
                       valid, checksum, delete_flag
                  FROM emp_coll_v)
      LOOP
         IF c.delete_flag IS NULL AND c.checksum IS NOT NULL
         THEN
            IF c.checksum <>
                  wwv_flow_item.md5 (c.empno,
                                     c.ename,
                                     c.job,
                                     c.mgr,
                                     c.hiredate,
                                     c.sal,
                                     c.comm,
                                     c.deptno,
                                     c.valid
                                    )
            THEN
               UPDATE emp
                  SET ename = c.ename,
                      job = c.job,
                      mgr = c.mgr,
                      hiredate = c.hiredate,
                      sal = c.sal,
                      comm = c.comm,
                      deptno = c.deptno
                WHERE empno = c.empno;

               v_upd_count := v_upd_count + 1;
            END IF;
         ELSIF c.delete_flag IS NULL AND c.checksum IS NULL
         THEN
            INSERT INTO emp
                        (empno, ename, job, mgr, hiredate, sal,
                         comm, deptno, valid
                        )
                 VALUES (c.empno, c.ename, c.job, c.mgr, c.hiredate, c.sal,
                         c.comm, c.deptno, c.valid
                        );

            v_ins_count := v_ins_count + 1;
         ELSIF c.delete_flag IS NOT NULL AND c.checksum IS NOT NULL
         THEN
            DELETE FROM emp
                  WHERE empno = c.empno;

            v_ins_count := v_ins_count + 1;
         END IF;
      END LOOP;

      p_message :=
            p_message
         || '<br/>'
         || v_ins_count
         || ' row(s) inserted. '
         || v_upd_count
         || ' row(s) updated. '
         || v_del_count
         || ' row(s) deleted.';
      create_emp_collection (p_deptno, v_message);
      p_message := p_message || '<br/>' || v_message;
      p_message := LTRIM (p_message, '<br/>');
   EXCEPTION
      WHEN OTHERS
      THEN
         p_message := SQLERRM;
   END update_table_from_collection;
END tab_form_emp_pkg;
/