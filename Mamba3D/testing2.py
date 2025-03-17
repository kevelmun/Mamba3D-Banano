import torch
print("PyTorch version:", torch.__version__)
print("CUDA available:", torch.cuda.is_available())

try:
    import knn_cuda
    print("knn_cuda imported correctly!")
    # Opcional: prueba que la extensión se cargue sin problemas
    if hasattr(knn_cuda, "KNN"):
        print("KNN extension is available.")
    else:
        print("KNN attribute not found in knn_cuda.")
except Exception as e:
    print("Error importing knn_cuda:", e)
