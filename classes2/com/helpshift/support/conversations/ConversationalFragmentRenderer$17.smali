.class Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$17;
.super Lcom/helpshift/support/conversations/TextWatcherAdapter;
.source "ConversationalFragmentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->setReplyboxListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;)V
    .registers 2

    .line 1313
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$17;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-direct {p0}, Lcom/helpshift/support/conversations/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1316
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$17;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object v0, v0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->conversationalFragmentRouter:Lcom/helpshift/support/conversations/ConversationalFragmentRouter;

    if-eqz v0, :cond_d

    .line 1317
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer$17;->this$0:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    iget-object v0, v0, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->conversationalFragmentRouter:Lcom/helpshift/support/conversations/ConversationalFragmentRouter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpshift/support/conversations/ConversationalFragmentRouter;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_d
    return-void
.end method
