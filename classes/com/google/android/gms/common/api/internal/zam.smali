.class final Lcom/google/android/gms/common/api/internal/zam;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zadn:Landroid/app/Dialog;

.field private final synthetic zado:Lcom/google/android/gms/common/api/internal/zan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zan;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zam;->zado:Lcom/google/android/gms/common/api/internal/zan;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zam;->zadn:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaq()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zado:Lcom/google/android/gms/common/api/internal/zan;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zan;->zadq:Lcom/google/android/gms/common/api/internal/zal;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zal;->zap()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zadn:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zam;->zadn:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method
