.class Lcom/helpshift/support/conversations/NewConversationFragment$5;
.super Ljava/lang/Object;
.source "NewConversationFragment.java"

# interfaces
.implements Lcom/helpshift/widget/HSObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/NewConversationFragment;->addViewStateObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/NewConversationFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/NewConversationFragment;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$5;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4

    .line 143
    check-cast p1, Lcom/helpshift/widget/ImageAttachmentViewState;

    .line 144
    invoke-virtual {p1}, Lcom/helpshift/widget/ImageAttachmentViewState;->getAttachmentPickerFile()Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$5;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    # getter for: Lcom/helpshift/support/conversations/NewConversationFragment;->renderer:Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;
    invoke-static {v1}, Lcom/helpshift/support/conversations/NewConversationFragment;->access$000(Lcom/helpshift/support/conversations/NewConversationFragment;)Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;->updateImageAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    .line 146
    iget-object v0, p0, Lcom/helpshift/support/conversations/NewConversationFragment$5;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    # getter for: Lcom/helpshift/support/conversations/NewConversationFragment;->renderer:Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;
    invoke-static {v0}, Lcom/helpshift/support/conversations/NewConversationFragment;->access$000(Lcom/helpshift/support/conversations/NewConversationFragment;)Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpshift/widget/ImageAttachmentViewState;->isClickable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;->updateImageAttachmentClick(Z)V

    return-void
.end method
