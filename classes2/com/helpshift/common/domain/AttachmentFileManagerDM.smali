.class public Lcom/helpshift/common/domain/AttachmentFileManagerDM;
.super Ljava/lang/Object;
.source "AttachmentFileManagerDM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/common/domain/AttachmentFileManagerDM$Listener;
    }
.end annotation


# static fields
.field public static final LOCAL_RSC_MESSAGE_PREFIX:Ljava/lang/String; = "localRscMessage_"


# instance fields
.field private domain:Lcom/helpshift/common/domain/Domain;

.field platform:Lcom/helpshift/common/platform/Platform;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/helpshift/common/domain/AttachmentFileManagerDM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 21
    iput-object p2, p0, Lcom/helpshift/common/domain/AttachmentFileManagerDM;->platform:Lcom/helpshift/common/platform/Platform;

    return-void
.end method


# virtual methods
.method public compressAndCopyAttachment(Lcom/helpshift/conversation/dto/AttachmentPickerFile;Lcom/helpshift/common/domain/AttachmentFileManagerDM$Listener;)V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/helpshift/common/domain/AttachmentFileManagerDM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/common/domain/AttachmentFileManagerDM$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpshift/common/domain/AttachmentFileManagerDM$1;-><init>(Lcom/helpshift/common/domain/AttachmentFileManagerDM;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Lcom/helpshift/common/domain/AttachmentFileManagerDM$Listener;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public deleteAttachmentLocalCopy(Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 55
    iget-object v0, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z

    if-eqz v0, :cond_14

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    return-void
.end method
