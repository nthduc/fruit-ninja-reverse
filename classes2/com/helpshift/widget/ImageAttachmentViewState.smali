.class public Lcom/helpshift/widget/ImageAttachmentViewState;
.super Lcom/helpshift/widget/HSBaseObservable;
.source "ImageAttachmentViewState.java"


# instance fields
.field protected attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

.field protected clickable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/helpshift/widget/HSBaseObservable;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/helpshift/widget/ImageAttachmentViewState;->clickable:Z

    return-void
.end method


# virtual methods
.method public getAttachmentPickerFile()Lcom/helpshift/conversation/dto/AttachmentPickerFile;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/helpshift/widget/ImageAttachmentViewState;->attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/helpshift/widget/ImageAttachmentViewState;->attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 18
    :cond_7
    iget-object v0, v0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    iget-object v0, p0, Lcom/helpshift/widget/ImageAttachmentViewState;->attachmentPickerFile:Lcom/helpshift/conversation/dto/AttachmentPickerFile;

    iget-object v1, v0, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    :goto_10
    return-object v1
.end method

.method public isClickable()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/helpshift/widget/ImageAttachmentViewState;->clickable:Z

    return v0
.end method

.method protected notifyInitialState()V
    .registers 1

    .line 27
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/ImageAttachmentViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method
