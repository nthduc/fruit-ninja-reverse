.class public Lcom/helpshift/widget/MutableImageAttachmentViewState;
.super Lcom/helpshift/widget/ImageAttachmentViewState;
.source "MutableImageAttachmentViewState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/helpshift/widget/ImageAttachmentViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public setAttachmentPickerFile(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/helpshift/widget/MutableImageAttachmentViewState;->attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    .line 9
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/helpshift/widget/MutableImageAttachmentViewState;->clickable:Z

    .line 14
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/MutableImageAttachmentViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method
