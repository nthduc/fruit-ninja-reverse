.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->updateReplyBoxVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)V
    .registers 2

    .line 1629
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationalRenderer;

    if-nez v0, :cond_7

    return-void

    .line 1636
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->replyBoxViewState:Lcom/helpshift/widget/MutableReplyBoxViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/widget/MutableReplyBoxViewState;->setVisible(Z)V

    .line 1637
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$22;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ConversationalVM;->botMessageDM:Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->access$200(Lcom/helpshift/conversation/viewmodel/ConversationalVM;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    # invokes: Lcom/helpshift/conversation/viewmodel/ConversationalVM;->showOptions(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V
    invoke-static {v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->access$300(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V

    return-void
.end method
