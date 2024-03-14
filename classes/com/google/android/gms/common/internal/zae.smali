.class final Lcom/google/android/gms/common/internal/zae;
.super Lcom/google/android/gms/common/internal/DialogRedirect;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field private final synthetic val$requestCode:I

.field private final synthetic zaou:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zae;->zaou:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zae;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zae;->zaou:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zae;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
