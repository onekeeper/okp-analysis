from . import db

# 全局变量。修改表指向数据库的映射
# global tablename
# tablename = 'view_flow_parse'
#
#
# def changeName(name):
#     global tablename
#     tablename = name

    

##################
# 新表结构构建如下：
##################
#主页性能图
class hzmc111_score_month(db.Model):
    __tablename__ = 'hzmc111_score_month'
    __bind_key__ =  'hzmc111'
        

    time = db.Column(db.DATETIME,primary_key=True)
    inst_id = db.Column(db.INTEGER,primary_key=True)
    hour = db.Column(db.VARCHAR,primary_key=True)
    score_name = db.Column(db.VARCHAR,primary_key=True)
    base_line = db.Column(db.BIGINT)

# '指标层次关系表'
class hzmc111_score_dept(db.Model):
    __tablename__ = 'hzmc111_score_dept'
    __bind_key__ =  'hzmc111'
        

    tab_name = db.Column(db.VARCHAR(100), primary_key=True)
    tab_level = db.Column(db.Integer)
    metric_name = db.Column(db.VARCHAR(100))
    up_table = db.Column(db.VARCHAR(100))
    stat_type = db.Column(db.VARCHAR(20))


# '上层指标汇总记分规则表'
class hzmc111_score_gen_rule(db.Model):
    __tablename__ = 'hzmc111_score_gen_rule'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    module_name = db.Column(db.VARCHAR(30))
    stat_name = db.Column(db.VARCHAR(30), primary_key=True)
    start_time = db.Column(db.TIME, primary_key=True)
    end_time = db.Column(db.TIME)
    score_rule = db.Column(db.VARCHAR(30))
    value = db.Column(db.BIGINT)


# '数据库分值表'
class hzmc111_score_db(db.Model):
    __tablename__ = 'hzmc111_score_db'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  ----------------------------------解析分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 解析分值表
class hzmc111_score_parse(db.Model):
    __tablename__ = 'hzmc111_score_parse'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 解析cpu得分表
class hzmc111_parse_cpu_score(db.Model):
    __tablename__ = 'hzmc111_parse_cpu_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 解析等待得分表
class hzmc111_parse_wait_score(db.Model):
    __tablename__ = 'hzmc111_parse_wait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 硬解析等待得分表
class hzmc111_parse_hard_score(db.Model):
    __tablename__ = 'hzmc111_parse_hard_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  ----------------------------------执行分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 执行分值表
class hzmc111_score_exec(db.Model):
    __tablename__ = 'hzmc111_score_exec'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 执行时间分值表
class hzmc111_exec_time_score(db.Model):
    __tablename__ = 'hzmc111_exec_time_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 执行等待分值表
class hzmc111_exec_wait_score(db.Model):
    __tablename__ = 'hzmc111_exec_wait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------物理IO分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 物理io分值表
class hzmc111_score_pio(db.Model):
    __tablename__ = 'hzmc111_score_pio'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 物理IO读取响应时间分值表
class hzmc111_pio_rtime_score(db.Model):
    __tablename__ = 'hzmc111_pio_rtime_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 物理IO写入响应时间分值表
class hzmc111_pio_wtime_score(db.Model):
    __tablename__ = 'hzmc111_pio_wtime_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 直接路径读响应时间分值表
class hzmc111_pio_d_rtime_score(db.Model):
    __tablename__ = 'hzmc111_pio_d_rtime_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 直接路径写响应时间分值表
class hzmc111_pio_d_wtime_score(db.Model):
    __tablename__ = 'hzmc111_pio_d_wtime_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 物理IO请求写入比分值表
class hzmc111_pio_req_write_score(db.Model):
    __tablename__ = 'hzmc111_pio_req_write_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------逻辑IO分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 逻辑io分值表
class hzmc111_score_lio(db.Model):
    __tablename__ = 'hzmc111_score_lio'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 逻辑IO等待次数分值表
class hzmc111_lio_wait_score(db.Model):
    __tablename__ = 'hzmc111_lio_wait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 逻辑读命中率分值表
class hzmc111_lio_ratio_score(db.Model):
    __tablename__ = 'hzmc111_lio_ratio_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 逻辑读cr分值表
class hzmc111_lio_cr_score(db.Model):
    __tablename__ = 'hzmc111_lio_cr_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Buffer Cache 分值相关表--------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Buffer Cache分值表
class hzmc111_score_bc(db.Model):
    __tablename__ = 'hzmc111_score_bc'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 索引分裂分值表
class hzmc111_bc_idxsplit_score(db.Model):
    __tablename__ = 'hzmc111_bc_idxsplit_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 检查点写入数据分值表
class hzmc111_bc_ckpt_score(db.Model):
    __tablename__ = 'hzmc111_bc_ckpt_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# LRU链分值表
class hzmc111_bc_lru_score(db.Model):
    __tablename__ = 'hzmc111_bc_lru_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# index failed probes 分值表
class hzmc111_bc_idxfp_score(db.Model):
    __tablename__ = 'hzmc111_bc_idxfp_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# buffer nowait分值表
class hzmc111_bc_nowait_score(db.Model):
    __tablename__ = 'hzmc111_bc_nowait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------共享池分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Shared Pool分值表
class hzmc111_score_sp(db.Model):
    __tablename__ = 'hzmc111_score_sp'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# open cursor分值表
class hzmc111_sp_cursor_score(db.Model):
    __tablename__ = 'hzmc111_sp_cursor_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Dictionary Cache Stats分值表
class hzmc111_sp_dict_score(db.Model):
    __tablename__ = 'hzmc111_sp_dict_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Library Cache Activity分值表
class hzmc111_sp_lca_score(db.Model):
    __tablename__ = 'hzmc111_sp_lca_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Library Cache Hit分值表
class hzmc111_sp_lcratio_score(db.Model):
    __tablename__ = 'hzmc111_sp_lcratio_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 软软解析分值表
class hzmc111_sp_ssparse_score(db.Model):
    __tablename__ = 'hzmc111_sp_ssparse_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Redo  分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Redo 分值表
class hzmc111_score_redo(db.Model):
    __tablename__ = 'hzmc111_score_redo'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# redo 等待次数分值表
class hzmc111_redo_wait_score(db.Model):
    __tablename__ = 'hzmc111_redo_wait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# log file sync分值表
class hzmc111_redo_lgsync_score(db.Model):
    __tablename__ = 'hzmc111_redo_lgsync_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# log file parallel write 分值表
class hzmc111_redo_lgwr_score(db.Model):
    __tablename__ = 'hzmc111_redo_lgwr_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Undo  分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# undo 分值表
class hzmc111_score_undo(db.Model):
    __tablename__ = 'hzmc111_score_undo'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# undo 等待次数分值表
class hzmc111_undo_wait_score(db.Model):
    __tablename__ = 'hzmc111_undo_wait_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# expired undo blocks stolen from other undo segments 分值表
class hzmc111_undo_expired_score(db.Model):
    __tablename__ = 'hzmc111_undo_expired_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# rollback 分值表
class hzmc111_undo_rollback_score(db.Model):
    __tablename__ = 'hzmc111_undo_rollback_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------SQL  分值相关表----------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# SQL 分值表
class hzmc111_score_sql(db.Model):
    __tablename__ = 'hzmc111_score_sql'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 耗时长SQL 分值表
class hzmc111_sql_long_score(db.Model):
    __tablename__ = 'hzmc111_sql_long_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# high cpu SQL 分值表
class hzmc111_sql_cpu_score(db.Model):
    __tablename__ = 'hzmc111_sql_cpu_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# high io SQL 分值表
class hzmc111_sql_io_score(db.Model):
    __tablename__ = 'hzmc111_sql_io_score'
    __bind_key__ = 'hzmc111'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# /*  --------------------------------rac  分值相关表----------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# rac 分值表
class hzmc111_score_rac(db.Model):
    __tablename__ = 'hzmc111_score_rac'
    __bind_key__ = 'hzmc111'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# rac ksxp 分值表
class hzmc111_rac_ksxp_score(db.Model):
    __tablename__ = 'hzmc111_rac_ksxp_score'
    __bind_key__ = 'hzmc111'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# rac busy 分值表
class hzmc111_rac_busy_score(db.Model):
    __tablename__ = 'hzmc111_rac_busy_score'
    __bind_key__ = 'hzmc111'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# # sql plan 分值表
# class hzmc111_sql_plan_score(db.Model):
#     __tablename__ = 'hzmc111_sql_plan_score'
#     __bind_key__ = 'hzmc111'
#         
#
#     inst_id = db.Column(db.INTEGER, primary_key=True)
#     snap_id = db.Column(db.INTEGER, primary_key=True)
#     start_time = db.Column(db.DATETIME)
#     end_time = db.Column(db.DATETIME)
#     score = db.Column(db.BIGINT)
#     value = db.Column(db.BIGINT)

    

##################
# 新表结构构建如下：
##################
#主页性能图
class hzmc222_score_month(db.Model):
    __tablename__ = 'hzmc222_score_month'
    __bind_key__ =  'hzmc222'
        

    time = db.Column(db.DATETIME,primary_key=True)
    inst_id = db.Column(db.INTEGER,primary_key=True)
    hour = db.Column(db.VARCHAR,primary_key=True)
    score_name = db.Column(db.VARCHAR,primary_key=True)
    base_line = db.Column(db.BIGINT)

# '指标层次关系表'
class hzmc222_score_dept(db.Model):
    __tablename__ = 'hzmc222_score_dept'
    __bind_key__ =  'hzmc222'
        

    tab_name = db.Column(db.VARCHAR(100), primary_key=True)
    tab_level = db.Column(db.Integer)
    metric_name = db.Column(db.VARCHAR(100))
    up_table = db.Column(db.VARCHAR(100))
    stat_type = db.Column(db.VARCHAR(20))


# '上层指标汇总记分规则表'
class hzmc222_score_gen_rule(db.Model):
    __tablename__ = 'hzmc222_score_gen_rule'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    module_name = db.Column(db.VARCHAR(30))
    stat_name = db.Column(db.VARCHAR(30), primary_key=True)
    start_time = db.Column(db.TIME, primary_key=True)
    end_time = db.Column(db.TIME)
    score_rule = db.Column(db.VARCHAR(30))
    value = db.Column(db.BIGINT)


# '数据库分值表'
class hzmc222_score_db(db.Model):
    __tablename__ = 'hzmc222_score_db'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  ----------------------------------解析分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 解析分值表
class hzmc222_score_parse(db.Model):
    __tablename__ = 'hzmc222_score_parse'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 解析cpu得分表
class hzmc222_parse_cpu_score(db.Model):
    __tablename__ = 'hzmc222_parse_cpu_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 解析等待得分表
class hzmc222_parse_wait_score(db.Model):
    __tablename__ = 'hzmc222_parse_wait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 硬解析等待得分表
class hzmc222_parse_hard_score(db.Model):
    __tablename__ = 'hzmc222_parse_hard_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  ----------------------------------执行分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 执行分值表
class hzmc222_score_exec(db.Model):
    __tablename__ = 'hzmc222_score_exec'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 执行时间分值表
class hzmc222_exec_time_score(db.Model):
    __tablename__ = 'hzmc222_exec_time_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 执行等待分值表
class hzmc222_exec_wait_score(db.Model):
    __tablename__ = 'hzmc222_exec_wait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------物理IO分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 物理io分值表
class hzmc222_score_pio(db.Model):
    __tablename__ = 'hzmc222_score_pio'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 物理IO读取响应时间分值表
class hzmc222_pio_rtime_score(db.Model):
    __tablename__ = 'hzmc222_pio_rtime_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 物理IO写入响应时间分值表
class hzmc222_pio_wtime_score(db.Model):
    __tablename__ = 'hzmc222_pio_wtime_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 直接路径读响应时间分值表
class hzmc222_pio_d_rtime_score(db.Model):
    __tablename__ = 'hzmc222_pio_d_rtime_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 直接路径写响应时间分值表
class hzmc222_pio_d_wtime_score(db.Model):
    __tablename__ = 'hzmc222_pio_d_wtime_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 物理IO请求写入比分值表
class hzmc222_pio_req_write_score(db.Model):
    __tablename__ = 'hzmc222_pio_req_write_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------逻辑IO分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# 逻辑io分值表
class hzmc222_score_lio(db.Model):
    __tablename__ = 'hzmc222_score_lio'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 逻辑IO等待次数分值表
class hzmc222_lio_wait_score(db.Model):
    __tablename__ = 'hzmc222_lio_wait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 逻辑读命中率分值表
class hzmc222_lio_ratio_score(db.Model):
    __tablename__ = 'hzmc222_lio_ratio_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 逻辑读cr分值表
class hzmc222_lio_cr_score(db.Model):
    __tablename__ = 'hzmc222_lio_cr_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Buffer Cache 分值相关表--------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Buffer Cache分值表
class hzmc222_score_bc(db.Model):
    __tablename__ = 'hzmc222_score_bc'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 索引分裂分值表
class hzmc222_bc_idxsplit_score(db.Model):
    __tablename__ = 'hzmc222_bc_idxsplit_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 检查点写入数据分值表
class hzmc222_bc_ckpt_score(db.Model):
    __tablename__ = 'hzmc222_bc_ckpt_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# LRU链分值表
class hzmc222_bc_lru_score(db.Model):
    __tablename__ = 'hzmc222_bc_lru_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# index failed probes 分值表
class hzmc222_bc_idxfp_score(db.Model):
    __tablename__ = 'hzmc222_bc_idxfp_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# buffer nowait分值表
class hzmc222_bc_nowait_score(db.Model):
    __tablename__ = 'hzmc222_bc_nowait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------共享池分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Shared Pool分值表
class hzmc222_score_sp(db.Model):
    __tablename__ = 'hzmc222_score_sp'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# open cursor分值表
class hzmc222_sp_cursor_score(db.Model):
    __tablename__ = 'hzmc222_sp_cursor_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Dictionary Cache Stats分值表
class hzmc222_sp_dict_score(db.Model):
    __tablename__ = 'hzmc222_sp_dict_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Library Cache Activity分值表
class hzmc222_sp_lca_score(db.Model):
    __tablename__ = 'hzmc222_sp_lca_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# Library Cache Hit分值表
class hzmc222_sp_lcratio_score(db.Model):
    __tablename__ = 'hzmc222_sp_lcratio_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# 软软解析分值表
class hzmc222_sp_ssparse_score(db.Model):
    __tablename__ = 'hzmc222_sp_ssparse_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Redo  分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# Redo 分值表
class hzmc222_score_redo(db.Model):
    __tablename__ = 'hzmc222_score_redo'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# redo 等待次数分值表
class hzmc222_redo_wait_score(db.Model):
    __tablename__ = 'hzmc222_redo_wait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# log file sync分值表
class hzmc222_redo_lgsync_score(db.Model):
    __tablename__ = 'hzmc222_redo_lgsync_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# log file parallel write 分值表
class hzmc222_redo_lgwr_score(db.Model):
    __tablename__ = 'hzmc222_redo_lgwr_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------Undo  分值相关表---------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# undo 分值表
class hzmc222_score_undo(db.Model):
    __tablename__ = 'hzmc222_score_undo'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# undo 等待次数分值表
class hzmc222_undo_wait_score(db.Model):
    __tablename__ = 'hzmc222_undo_wait_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# expired undo blocks stolen from other undo segments 分值表
class hzmc222_undo_expired_score(db.Model):
    __tablename__ = 'hzmc222_undo_expired_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# rollback 分值表
class hzmc222_undo_rollback_score(db.Model):
    __tablename__ = 'hzmc222_undo_rollback_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# /*  ---------------------------------------------------------------------------------------------- */
# /*  --------------------------------SQL  分值相关表----------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# SQL 分值表
class hzmc222_score_sql(db.Model):
    __tablename__ = 'hzmc222_score_sql'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# 耗时长SQL 分值表
class hzmc222_sql_long_score(db.Model):
    __tablename__ = 'hzmc222_sql_long_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# high cpu SQL 分值表
class hzmc222_sql_cpu_score(db.Model):
    __tablename__ = 'hzmc222_sql_cpu_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)


# high io SQL 分值表
class hzmc222_sql_io_score(db.Model):
    __tablename__ = 'hzmc222_sql_io_score'
    __bind_key__ = 'hzmc222'
        

    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# /*  --------------------------------rac  分值相关表----------------------------------------------- */
# /*  ---------------------------------------------------------------------------------------------- */

# rac 分值表
class hzmc222_score_rac(db.Model):
    __tablename__ = 'hzmc222_score_rac'
    __bind_key__ = 'hzmc222'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)


# rac ksxp 分值表
class hzmc222_rac_ksxp_score(db.Model):
    __tablename__ = 'hzmc222_rac_ksxp_score'
    __bind_key__ = 'hzmc222'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# rac busy 分值表
class hzmc222_rac_busy_score(db.Model):
    __tablename__ = 'hzmc222_rac_busy_score'
    __bind_key__ = 'hzmc222'


    inst_id = db.Column(db.INTEGER, primary_key=True)
    snap_id = db.Column(db.INTEGER, primary_key=True)
    start_time = db.Column(db.DATETIME)
    end_time = db.Column(db.DATETIME)
    score = db.Column(db.BIGINT)
    value = db.Column(db.BIGINT)

# # sql plan 分值表
# class hzmc222_sql_plan_score(db.Model):
#     __tablename__ = 'hzmc222_sql_plan_score'
#     __bind_key__ = 'hzmc222'
#         
#
#     inst_id = db.Column(db.INTEGER, primary_key=True)
#     snap_id = db.Column(db.INTEGER, primary_key=True)
#     start_time = db.Column(db.DATETIME)
#     end_time = db.Column(db.DATETIME)
#     score = db.Column(db.BIGINT)
#     value = db.Column(db.BIGINT)

    