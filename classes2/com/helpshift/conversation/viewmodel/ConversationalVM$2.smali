.class Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;
.super Lcom/helpshift/common/domain/F;
.source "ConversationalVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ConversationalVM;->markMessagesAsSeenOnEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

.field final synthetic val$activeConversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ConversationalVM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    .line 340
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;->val$activeConversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;->val$activeConversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ConversationalVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/ConversationalVM;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ConversationalVM$2;->val$activeConversation:Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markMessagesAsSeen(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_d
    return-void
.end method
