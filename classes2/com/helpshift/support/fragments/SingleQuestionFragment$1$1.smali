.class Lcom/helpshift/support/fragments/SingleQuestionFragment$1$1;
.super Lcom/helpshift/common/domain/F;
.source "SingleQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/fragments/SingleQuestionFragment$1;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/support/fragments/SingleQuestionFragment$1;


# direct methods
.method constructor <init>(Lcom/helpshift/support/fragments/SingleQuestionFragment$1;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1$1;->this$1:Lcom/helpshift/support/fragments/SingleQuestionFragment$1;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1$1;->this$1:Lcom/helpshift/support/fragments/SingleQuestionFragment$1;

    iget-object v0, v0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1;->this$0:Lcom/helpshift/support/fragments/SingleQuestionFragment;

    # getter for: Lcom/helpshift/support/fragments/SingleQuestionFragment;->highlightedQuestion:Lcom/helpshift/support/Faq;
    invoke-static {v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$000(Lcom/helpshift/support/fragments/SingleQuestionFragment;)Lcom/helpshift/support/Faq;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 486
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1$1;->this$1:Lcom/helpshift/support/fragments/SingleQuestionFragment$1;

    iget-object v0, v0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1;->this$0:Lcom/helpshift/support/fragments/SingleQuestionFragment;

    iget-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment$1$1;->this$1:Lcom/helpshift/support/fragments/SingleQuestionFragment$1;

    iget-object v1, v1, Lcom/helpshift/support/fragments/SingleQuestionFragment$1;->this$0:Lcom/helpshift/support/fragments/SingleQuestionFragment;

    # getter for: Lcom/helpshift/support/fragments/SingleQuestionFragment;->highlightedQuestion:Lcom/helpshift/support/Faq;
    invoke-static {v1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->access$000(Lcom/helpshift/support/fragments/SingleQuestionFragment;)Lcom/helpshift/support/Faq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setQuestion(Lcom/helpshift/support/Faq;)V

    :cond_19
    return-void
.end method
