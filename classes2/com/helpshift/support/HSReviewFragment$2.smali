.class Lcom/helpshift/support/HSReviewFragment$2;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSReviewFragment;->initAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSReviewFragment;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 127
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const-string p2, "feedback"

    invoke-virtual {p1, p2}, Lcom/helpshift/support/HSReviewFragment;->sendReviewActionEvent(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V

    .line 129
    invoke-static {}, Lcom/helpshift/support/storage/IMAppSessionStorage;->getInstance()Lcom/helpshift/support/storage/IMAppSessionStorage;

    move-result-object p1

    const-string v0, "current_open_screen"

    invoke-virtual {p1, v0}, Lcom/helpshift/support/storage/IMAppSessionStorage;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/helpshift/support/util/AppSessionConstants$Screen;

    .line 130
    sget-object v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;->NEW_CONVERSATION:Lcom/helpshift/support/util/AppSessionConstants$Screen;

    if-eq p1, v0, :cond_62

    sget-object v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;->CONVERSATION:Lcom/helpshift/support/util/AppSessionConstants$Screen;

    if-eq p1, v0, :cond_62

    sget-object v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;->CONVERSATION_INFO:Lcom/helpshift/support/util/AppSessionConstants$Screen;

    if-eq p1, v0, :cond_62

    sget-object v0, Lcom/helpshift/support/util/AppSessionConstants$Screen;->SCREENSHOT_PREVIEW:Lcom/helpshift/support/util/AppSessionConstants$Screen;

    if-eq p1, v0, :cond_62

    .line 134
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-virtual {v0}, Lcom/helpshift/support/HSReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/helpshift/support/activities/ParentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "support_mode"

    .line 135
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "decomp"

    .line 136
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    .line 138
    invoke-virtual {v0}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/ActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "showInFullScreen"

    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "isRoot"

    .line 139
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "search_performed"

    .line 140
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object p2, p0, Lcom/helpshift/support/HSReviewFragment$2;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-virtual {p2}, Lcom/helpshift/support/HSReviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_62
    return-void
.end method
