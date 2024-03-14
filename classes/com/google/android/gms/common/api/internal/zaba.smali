.class final Lcom/google/android/gms/common/api/internal/zaba;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private zahq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaau;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaau;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaba;->zahq:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zaq()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaba;->zahq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaau;

    if-nez v0, :cond_b

    return-void

    .line 7
    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Lcom/google/android/gms/common/api/internal/zaau;)V

    return-void
.end method
