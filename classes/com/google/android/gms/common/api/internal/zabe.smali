.class final Lcom/google/android/gms/common/api/internal/zabe;
.super Lcom/google/android/gms/internal/base/zap;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zahy:Lcom/google/android/gms/common/api/internal/zabc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabc;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahy:Lcom/google/android/gms/common/api/internal/zabc;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown message id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GACStateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 5
    :cond_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabf;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahy:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zabf;->zac(Lcom/google/android/gms/common/api/internal/zabc;)V

    return-void
.end method
