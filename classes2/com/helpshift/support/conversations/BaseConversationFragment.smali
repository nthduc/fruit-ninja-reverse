.class public abstract Lcom/helpshift/support/conversations/BaseConversationFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "BaseConversationFragment.java"


# static fields
.field public static final REQUEST_READ_STORAGE_PERMISSION_REQUEST_ID:I = 0x2

.field public static final REQUEST_WRITE_STORAGE_PERMISSION_REQUEST_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Helpshift_BaseConvFrag"


# instance fields
.field private permissionDeniedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private showRationaleSnackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAttachmentMode()I
.end method

.method protected getSupportController()Lcom/helpshift/support/controllers/SupportController;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/SupportFragment;

    return-object v0
.end method

.method protected abstract getToolbarTitle()Ljava/lang/String;
.end method

.method protected abstract getViewName()Lcom/helpshift/support/util/AppSessionConstants$Screen;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 152
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getSupportFragment()Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/support/fragments/SupportFragment;->resetNewMessageCount()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/util/SnackbarUtil;->hideSnackbar(Landroid/view/View;)V

    .line 166
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroyView()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->showRationaleSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->showRationaleSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 53
    :cond_f
    iget-object v0, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->permissionDeniedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 54
    iget-object v0, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->permissionDeniedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 56
    :cond_1e
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onPause()V

    return-void
.end method

.method protected abstract onPermissionGranted(I)V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/fragments/MainFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 128
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_d

    aget p2, p3, v0

    if-nez p2, :cond_d

    const/4 v0, 0x1

    .line 130
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRequestPermissionsResult : request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Helpshift_BaseConvFrag"

    invoke-static {p3, p2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_31

    .line 133
    invoke-virtual {p0, p1}, Lcom/helpshift/support/conversations/BaseConversationFragment;->onPermissionGranted(I)V

    goto :goto_4e

    .line 136
    :cond_31
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/helpshift/R$string;->hs__permission_denied_message:I

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/helpshift/views/HSSnackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    sget p2, Lcom/helpshift/R$string;->hs__permission_denied_snackbar_action:I

    new-instance p3, Lcom/helpshift/support/conversations/BaseConversationFragment$1;

    invoke-direct {p3, p0}, Lcom/helpshift/support/conversations/BaseConversationFragment$1;-><init>(Lcom/helpshift/support/conversations/BaseConversationFragment;)V

    .line 138
    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->permissionDeniedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 146
    iget-object p1, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->permissionDeniedSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_4e
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 159
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->setToolbarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 43
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 44
    invoke-static {}, Lcom/helpshift/support/storage/IMAppSessionStorage;->getInstance()Lcom/helpshift/support/storage/IMAppSessionStorage;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getViewName()Lcom/helpshift/support/util/AppSessionConstants$Screen;

    move-result-object v1

    const-string v2, "current_open_screen"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/helpshift/support/storage/IMAppSessionStorage;->set(Ljava/lang/String;Ljava/io/Serializable;)Z

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 61
    invoke-static {}, Lcom/helpshift/support/storage/IMAppSessionStorage;->getInstance()Lcom/helpshift/support/storage/IMAppSessionStorage;

    move-result-object v0

    const-string v1, "current_open_screen"

    .line 62
    invoke-virtual {v0, v1}, Lcom/helpshift/support/storage/IMAppSessionStorage;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;

    if-eqz v0, :cond_1f

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getViewName()Lcom/helpshift/support/util/AppSessionConstants$Screen;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/helpshift/support/util/AppSessionConstants$Screen;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    invoke-static {}, Lcom/helpshift/support/storage/IMAppSessionStorage;->getInstance()Lcom/helpshift/support/storage/IMAppSessionStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helpshift/support/storage/IMAppSessionStorage;->removeKey(Ljava/lang/String;)V

    .line 66
    :cond_1f
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    return-void
.end method

.method public requestPermission(ZI)V
    .registers 11

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    goto :goto_d

    :cond_b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    :goto_d
    if-eqz p1, :cond_36

    if-eqz v0, :cond_36

    .line 107
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/helpshift/util/KeyboardUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v3, p1

    sget v4, Lcom/helpshift/R$string;->hs__permission_denied_message:I

    sget v5, Lcom/helpshift/R$string;->hs__permission_rationale_snackbar_action_label:I

    .line 113
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getView()Landroid/view/View;

    move-result-object v7

    move v6, p2

    .line 108
    invoke-static/range {v2 .. v7}, Lcom/helpshift/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;IIILandroid/view/View;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/conversations/BaseConversationFragment;->showRationaleSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_46

    .line 116
    :cond_36
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_46

    .line 117
    invoke-virtual {p0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->getView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/helpshift/R$string;->hs__permission_not_granted:I

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;II)V

    :cond_46
    :goto_46
    return-void
.end method

.method protected requestWriteExternalStoragePermission(Z)V
    .registers 3

    const/4 v0, 0x3

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/conversations/BaseConversationFragment;->requestPermission(ZI)V

    return-void
.end method

.method public shouldRefreshMenu()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
