.class Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;
.super Lcom/helpshift/common/domain/F;
.source "ListPickerVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyShowClearButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/ListPickerVM;


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ListPickerVM;->listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->access$400(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;->this$0:Lcom/helpshift/conversation/viewmodel/ListPickerVM;

    # getter for: Lcom/helpshift/conversation/viewmodel/ListPickerVM;->listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;
    invoke-static {v0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->access$400(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;->showPickerClearButton()V

    :cond_11
    return-void
.end method
