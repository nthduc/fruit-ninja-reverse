.class Lcom/helpshift/support/HSReviewFragment$1;
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

    .line 105
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 109
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object p1, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 110
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object p2

    invoke-interface {p2}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p2

    const-string v0, "reviewUrl"

    invoke-virtual {p2, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    .line 112
    :cond_1c
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object p2, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object p1, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 114
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    iget-object p2, p1, Lcom/helpshift/support/HSReviewFragment;->rurl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/helpshift/support/HSReviewFragment;->gotoApp(Ljava/lang/String;)V

    .line 116
    :cond_37
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const-string p2, "reviewed"

    invoke-virtual {p1, p2}, Lcom/helpshift/support/HSReviewFragment;->sendReviewActionEvent(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/helpshift/support/HSReviewFragment$1;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V

    return-void
.end method
