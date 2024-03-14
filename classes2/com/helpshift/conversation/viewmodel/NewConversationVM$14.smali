.class Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;
.super Lcom/helpshift/common/domain/F;
.source "NewConversationVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/NewConversationVM;->onAuthenticationFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->rendererWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 400
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$14;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->rendererWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;

    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/NewConversationRenderer;->onAuthenticationFailure()V

    :cond_17
    return-void
.end method
