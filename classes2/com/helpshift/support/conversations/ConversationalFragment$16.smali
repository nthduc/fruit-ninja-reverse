.class Lcom/helpshift/support/conversations/ConversationalFragment$16;
.super Ljava/lang/Object;
.source "ConversationalFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/ConversationalFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/ConversationalFragment;

.field final synthetic val$textToCopy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/ConversationalFragment;Ljava/lang/String;)V
    .registers 3

    .line 651
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment$16;->this$0:Lcom/helpshift/support/conversations/ConversationalFragment;

    iput-object p2, p0, Lcom/helpshift/support/conversations/ConversationalFragment$16;->val$textToCopy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 654
    iget-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment$16;->this$0:Lcom/helpshift/support/conversations/ConversationalFragment;

    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment$16;->val$textToCopy:Ljava/lang/String;

    # invokes: Lcom/helpshift/support/conversations/ConversationalFragment;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/helpshift/support/conversations/ConversationalFragment;->access$000(Lcom/helpshift/support/conversations/ConversationalFragment;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
