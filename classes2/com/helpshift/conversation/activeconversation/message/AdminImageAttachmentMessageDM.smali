.class public Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;
.super Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;
.source "AdminImageAttachmentMessageDM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;
    }
.end annotation


# instance fields
.field private downloadProgress:I

.field public state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;


# direct methods
.method private constructor <init>(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;)V

    .line 36
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    .line 37
    iget p1, p1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadProgress:I

    iput p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadProgress:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 27

    .line 28
    sget-object v13, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_IMAGE_ATTACHMENT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    const/4 v11, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p12

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/helpshift/conversation/activeconversation/message/MessageType;)V

    move-object v1, p1

    .line 30
    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->serverId:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->updateState()V

    return-void
.end method

.method static synthetic access$002(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadProgress:I

    return p1
.end method


# virtual methods
.method public checkAndGetFilePath()Ljava/lang/String;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->isValidUriPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 95
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->platform:Lcom/helpshift/common/platform/Platform;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/helpshift/common/platform/Platform;->canReadFileAtUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 96
    iput-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    goto :goto_24

    .line 99
    :cond_1a
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/FileUtil;->doesFilePathExistAndCanRead(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 100
    iput-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 103
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 104
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->THUMBNAIL_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    .line 106
    :cond_32
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public checkAndGetThumbnailFilePath()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/FileUtil;->doesFilePathExistAndCanRead(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 87
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    .line 90
    :cond_f
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->thumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;
    .registers 2

    .line 188
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V

    return-object v0
.end method

.method public bridge synthetic deepClone()Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepClone()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->deepClone()Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    move-result-object v0

    return-object v0
.end method

.method public downloadThumbnailImage(Lcom/helpshift/common/platform/Platform;)V
    .registers 8

    .line 115
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-ne v0, v1, :cond_2c

    .line 116
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->THUMBNAIL_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;)V

    .line 117
    new-instance v0, Lcom/helpshift/downloader/AdminFileInfo;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->thumbnailUrl:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->isSecureAttachment:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/helpshift/downloader/AdminFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getDownloader()Lcom/helpshift/downloader/SupportDownloader;

    move-result-object v1

    sget-object v2, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->EXTERNAL_OR_INTERNAL:Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    new-instance v3, Lcom/helpshift/common/domain/network/AuthDataProvider;

    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v5, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->attachmentUrl:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v5}, Lcom/helpshift/common/domain/network/AuthDataProvider;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V

    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$1;

    invoke-direct {v4, p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$1;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;Lcom/helpshift/common/platform/Platform;)V

    .line 119
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/helpshift/downloader/SupportDownloader;->startDownload(Lcom/helpshift/downloader/AdminFileInfo;Lcom/helpshift/downloader/SupportDownloader$StorageDirType;Lcom/helpshift/common/domain/network/AuthDataProvider;Lcom/helpshift/downloader/SupportDownloadStateChangeListener;)V

    :cond_2c
    return-void
.end method

.method public getDownloadProgressAndFileSize()Ljava/lang/String;
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getDownloadedProgressSize()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_23
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedProgressSize()Ljava/lang/String;
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadProgress:I

    if-lez v0, :cond_23

    .line 77
    iget v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->size:I

    iget v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadProgress:I

    mul-int v0, v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 78
    iget v2, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->size:I

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_23

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->getFormattedFileSize(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method public handleClick(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V
    .registers 8

    .line 144
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-ne v0, v1, :cond_12

    if-eqz p1, :cond_51

    .line 146
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->contentType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->launchAttachment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 149
    :cond_12
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->THUMBNAIL_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->THUMBNAIL_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    if-ne p1, v0, :cond_51

    .line 152
    :cond_24
    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;)V

    .line 153
    new-instance p1, Lcom/helpshift/downloader/AdminFileInfo;

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->attachmentUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->contentType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->isSecureAttachment:Z

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/helpshift/downloader/AdminFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getDownloader()Lcom/helpshift/downloader/SupportDownloader;

    move-result-object v0

    sget-object v1, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->EXTERNAL_ONLY:Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    new-instance v2, Lcom/helpshift/common/domain/network/AuthDataProvider;

    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v5, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->attachmentUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/helpshift/common/domain/network/AuthDataProvider;-><init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V

    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$2;

    invoke-direct {v3, p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$2;-><init>(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;)V

    .line 155
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/helpshift/downloader/SupportDownloader;->startDownload(Lcom/helpshift/downloader/AdminFileInfo;Lcom/helpshift/downloader/SupportDownloader$StorageDirType;Lcom/helpshift/common/domain/network/AuthDataProvider;Lcom/helpshift/downloader/SupportDownloadStateChangeListener;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public isUISupportedMessage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V
    .registers 3

    .line 42
    invoke-super {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/message/ImageAttachmentMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 48
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->filePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->isValidUriPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 49
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->updateState()V

    :cond_e
    return-void
.end method

.method public setState(Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    .line 111
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->notifyUpdated()V

    return-void
.end method

.method public updateState()V
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 55
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    goto :goto_1a

    .line 57
    :cond_b
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->checkAndGetThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 58
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->THUMBNAIL_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    goto :goto_1a

    .line 61
    :cond_16
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->state:Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM$AdminImageAttachmentState;

    :goto_1a
    return-void
.end method
