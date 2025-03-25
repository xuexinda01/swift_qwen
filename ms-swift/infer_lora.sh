NPROC_PER_NODE=2 \
CUDA_VISIBLE_DEVICES=0,1 \
swift infer \
    --model /high_perf_store/surround-view/xxd/vlm_ckpt/Qwen2.5-VL-7B-Instruct \
    --infer_backend pt \
    --val_dataset /high_perf_store/surround-view/shaoqing/code/VLA/internvl/internvl_chat/qwen2.5vl_data_annotations.jsonl \
    --max_batch_size 16 \
    --max_new_tokens 512 \
    --adapters /high_perf_store/surround-view/xxd/vlm_output/8_lora_qwen2.5vl/v2-20250310-111840/checkpoint-359 \
    --result_path /high_perf_store/surround-view/xxd/result/lora_7b_qwen