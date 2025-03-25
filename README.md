# swift_qwen
使用swift训练qwen

环境install
```python
参考swift官方仓库
```

环境激活
```python
conda activate /high_perf_store/surround-view/xxd/miniconda3/envs/swift
```

训练
```python
bash /high_perf_store/surround-view/xxd/ms-swift/test_full.sh  #全量微调
bash /high_perf_store/surround-view/xxd/ms-swift/test_lora.sh  #lora微调
```

推理
```python
#二选一
python /high_perf_store/surround-view/xxd/qwen_infer/start_infer.py  
python /high_perf_store/surround-view/xxd/qwen_infer/start_lora.py
```
