.class Lcom/helpshift/support/conversations/NewConversationFragment$13;
.super Ljava/lang/Object;
.source "NewConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/NewConversationFragment;->setViewListeners(Landroid/view/View;)V
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

    .line 366
    iput-object p1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$13;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 369
    iget-object p1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$13;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    iget-object p1, p1, Lcom/helpshift/support/conversations/NewConversationFragment;->newConversationVM:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->handleImageAttachmentClearButtonClick()V

    return-void
.end method
