.class Lcom/helpshift/conversation/viewmodel/ConversationInfoVM$1;
.super Lcom/helpshift/common/domain/F;
.source "ConversationInfoVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;->onAuthenticationFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM$1;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM$1;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;->access$000(Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;)Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 26
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM$1;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;->renderer:Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;->access$000(Lcom/helpshift/conversation/viewmodel/ConversationInfoVM;)Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/conversation/activeconversation/ConversationInfoRenderer;->onAuthenticationFailure()V

    :cond_11
    return-void
.end method
