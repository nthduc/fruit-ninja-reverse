.class final Lcom/google/android/gms/common/internal/zad;
.super Lcom/google/android/gms/common/internal/DialogRedirect;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic val$requestCode:I

.field private final synthetic zaou:Landroid/content/Intent;

.field private final synthetic zaov:Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zad;->zaou:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zad;->zaov:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zad;->zaou:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zad;->zaov:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
