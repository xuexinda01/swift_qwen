# 22GB
nproc_per_node=1

nnodes=1

CUDA_VISIBLE_DEVICES=1 \
NNODES=$nnodes \
NODE_RANK=0 \
MASTER_ADDR=127.0.0.1 \
MASTER_PORT=29500 \
NPROC_PER_NODE=$nproc_per_node \

swift sft \
    --model /high_perf_store/surround-view/xxd/vlm_ckpt/Qwen2.5-VL-7B-Instruct \
    --train_type full \
    --dataset /high_perf_store/surround-view/shaoqing/code/VLA/internvl/internvl_chat/qwen2.5vl_data_annotations.jsonl \
    --torch_dtype bfloat16 \
    --num_train_epochs 1 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --learning_rate 1e-5 \
    --gradient_accumulation_steps 1 \
    --eval_steps 100 \
    --save_steps 100 \
    --save_total_limit 1 \
    --logging_steps 5 \
    --max_length 8192 \
    --output_dir /high_perf_store/surround-view/xxd/vlm_output/8_lora_qwen2.5vl \
    --system 'You are a helpful assistant.' \
    --warmup_ratio 0.05 \
    --dataloader_num_workers 4 \