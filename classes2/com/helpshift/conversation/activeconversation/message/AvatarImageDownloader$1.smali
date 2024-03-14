.class final Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;
.super Ljava/lang/Object;
.source "AvatarImageDownloader.java"

# interfaces
.implements Lcom/helpshift/common/util/DownloadUtil$OnFileDownloadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->downloadAvatarImageInternal(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Ljava/lang/String;Lcom/helpshift/common/domain/network/HSUrlMetadata;ZLcom/helpshift/conversation/activeconversation/message/MessageDM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$avatarImageUrl:Ljava/lang/String;

.field final synthetic val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

.field final synthetic val$platform:Lcom/helpshift/common/platform/Platform;

.field final synthetic val$skipCaching:Z


# direct methods
.method constructor <init>(ZLcom/helpshift/common/platform/Platform;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 5

    .line 75
    iput-boolean p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$skipCaching:Z

    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$avatarImageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDownloadFailure(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 94
    sget-object p3, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->CONTENT_UNCHANGED:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p2, p3, :cond_19

    .line 95
    iget-boolean p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$skipCaching:Z

    if-eqz p2, :cond_11

    .line 97
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    # invokes: Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->updateLastFetchTimestampAndStatus(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->access$200(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;)V

    .line 99
    :cond_11
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setAvatarImageState(Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;)V

    goto :goto_3c

    .line 102
    :cond_19
    iget-boolean p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$skipCaching:Z

    const-string p3, ""

    if-eqz p2, :cond_2e

    .line 104
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    const/4 v0, 0x0

    # invokes: Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->insertOrUpdateUrlMetadata(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {p2, p1, p3, v0}, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->access$000(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/helpshift/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 108
    :cond_2e
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    # invokes: Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->updateMessageDm(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    invoke-static {p1, p3, p2}, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->access$100(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 109
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOAD_FAILED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setAvatarImageState(Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;)V

    :goto_3c
    return-void
.end method

.method public onFileDownloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 79
    iget-boolean p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$skipCaching:Z

    if-eqz p1, :cond_15

    .line 83
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    iget-object p4, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$avatarImageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    # invokes: Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->insertOrUpdateUrlMetadata(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {p1, p4, p3, v0}, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->access$000(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/helpshift/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 87
    :cond_15
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$platform:Lcom/helpshift/common/platform/Platform;

    iget-object p3, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    # invokes: Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->updateMessageDm(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    invoke-static {p1, p2, p3}, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader;->access$100(Lcom/helpshift/common/platform/Platform;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 88
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/message/AvatarImageDownloader$1;->val$message:Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setAvatarImageState(Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;)V

    return-void
.end method
