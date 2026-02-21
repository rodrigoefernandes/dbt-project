with 

base as (
    select
        NR_LOJA as id_loja,
        NR_PEDIDO as id_pedido,
        CD_FORMA_PAGTO as cod_forma_pagto,
        NR_CLIENTE as id_cliente,
        CD_LOGRADOURO_CLI as cod_logradouro_cli,
        CD_FUNC_ATD as cod_func_atd,
        CD_FUNC_MOTOBOY as cod_func_motoboy,
        DT_PEDIDO as dt_pedido,
        DT_PREV_ENTREGA as dt_prev_entrega,
        VL_TOT_PEDIDO as val_tot_pedido,
        ST_PEDIDO as cod_st_pedido


          
    from {{source('datalake', 'db_pedido_raw')}}
)

select * from base