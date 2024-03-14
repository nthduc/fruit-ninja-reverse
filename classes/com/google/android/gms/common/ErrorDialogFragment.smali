.class public Lcom/google/android/gms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private zaaq:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;
    .registers 4
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/common/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/google/android/gms/common/ErrorDialogFragment;-><init>()V

    const-string v1, "Cannot display null dialog"

    .line 10
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    iput-object p0, v0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1a

    .line 15
    iput-object p1, v0, Lcom/google/android/gms/common/ErrorDialogFragment;->zaaq:Landroid/content/DialogInterface$OnCancelListener;

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->zaaq:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_7
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    .line 4
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/common/ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
