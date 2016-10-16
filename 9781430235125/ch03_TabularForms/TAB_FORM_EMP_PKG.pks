/* Formatted on 2011/02/27 21:49 (Formatter Plus v4.8.8) */
CREATE OR REPLACE PACKAGE ora_experts.tab_form_emp_pkg
AS
   PROCEDURE disable_foreign_constraints;

   PROCEDURE enable_foreign_constraints;

   PROCEDURE restore_tables;

   PROCEDURE delete_emp_row (p_message OUT VARCHAR2);

   PROCEDURE save_emp_custom (p_message OUT VARCHAR2);

   FUNCTION validate_emp_comm
      RETURN VARCHAR2;

   FUNCTION compare_checksum_change (p_array IN NUMBER)
      RETURN BOOLEAN;

   FUNCTION compare_checksum_table (p_array IN NUMBER)
      RETURN BOOLEAN;

   FUNCTION validate_data_integrity
      RETURN VARCHAR2;

   PROCEDURE get_job;

   FUNCTION get_manager_for_id (p_mgr IN NUMBER)
      RETURN VARCHAR2;

   PROCEDURE get_manager;

   FUNCTION get_autocomplete_key (
      p_value        IN   VARCHAR2,
      p_key_item     IN   VARCHAR2,
      p_rownum       IN   VARCHAR2,
      p_width        IN   NUMBER,
      p_process      IN   VARCHAR2,
      p_max_length   IN   NUMBER DEFAULT 80,
      p_size         IN   NUMBER DEFAULT 80
   )
      RETURN VARCHAR2;

   FUNCTION get_autocomplete (
      p_item      IN   VARCHAR2,
      p_rownum    IN   VARCHAR2,
      p_width     IN   NUMBER,
      p_process   IN   VARCHAR2
   )
      RETURN VARCHAR2;

   PROCEDURE create_emp_collection (p_deptno IN NUMBER, p_message OUT VARCHAR2);

   PROCEDURE save_emp_coll_custom (p_message OUT VARCHAR2);

   PROCEDURE delete_emp_coll_custom (p_message OUT VARCHAR2);

   PROCEDURE update_emp_coll_member (
      p_seq_id             IN   NUMBER,
      p_attribute_number   IN   NUMBER,
      p_attribute_value    IN   VARCHAR2
   );

   FUNCTION validate_collection_data
      RETURN VARCHAR2;

   PROCEDURE update_table_from_collection (
      p_deptno    IN       NUMBER,
      p_message   OUT      VARCHAR2
   );
END tab_form_emp_pkg;
/