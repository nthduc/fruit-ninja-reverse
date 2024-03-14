.class public Lcom/helpshift/widget/MutableReplyBoxViewState;
.super Lcom/helpshift/widget/ReplyBoxViewState;
.source "MutableReplyBoxViewState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/helpshift/widget/ReplyBoxViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public setInput(Lcom/helpshift/conversation/activeconversation/message/input/Input;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 17
    iget-object v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->input:Lcom/helpshift/conversation/activeconversation/message/input/Input;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/input/Input;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible:Z

    .line 19
    iput-object p1, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->input:Lcom/helpshift/conversation/activeconversation/message/input/Input;

    .line 20
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->notifyChange(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public setStandardTextInput()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->input:Lcom/helpshift/conversation/activeconversation/message/input/Input;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->input:Lcom/helpshift/conversation/activeconversation/message/input/Input;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible:Z

    .line 34
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 45
    iget-boolean v0, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible:Z

    if-eq p1, v0, :cond_c

    .line 46
    iput-boolean p1, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->isVisible:Z

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/helpshift/widget/MutableReplyBoxViewState;->input:Lcom/helpshift/conversation/activeconversation/message/input/Input;

    .line 48
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableReplyBoxViewState;->notifyChange(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method
