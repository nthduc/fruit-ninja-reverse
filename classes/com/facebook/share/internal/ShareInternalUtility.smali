.class public final Lcom/facebook/share/internal/ShareInternalUtility;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"


# static fields
.field public static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 2

    .line 79
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    return-object p0
.end method

.method private static getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;
    .registers 3

    .line 211
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_8
    invoke-static {p1, p0}, Lcom/facebook/internal/AppCall;->finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;

    move-result-object p0

    return-object p0
.end method

.method private static getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 3

    if-eqz p2, :cond_7

    .line 530
    invoke-static {p0, p2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    goto :goto_f

    :cond_7
    if-eqz p1, :cond_e

    .line 532
    invoke-static {p0, p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method private static getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4

    .line 514
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 515
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .line 516
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 517
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1c

    .line 518
    :cond_10
    instance-of v0, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1b

    .line 519
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    .line 520
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v1

    .line 523
    :goto_1c
    invoke-static {p0, p1, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2e

    .line 726
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 730
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$11;

    invoke-direct {v1, p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility$11;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 735
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p1

    .line 753
    invoke-static {p0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 755
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3a

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1b

    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 506
    :goto_1c
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 303
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_1b

    .line 307
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$6;

    invoke-direct {v1, p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility$6;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 309
    invoke-static {p0, v1}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p0

    .line 323
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ne p0, p1, :cond_3

    return-object p0

    .line 672
    :cond_3
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne p0, v0, :cond_8

    return-object p1

    .line 674
    :cond_8
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne p1, v0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "completionGesture"

    .line 125
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 126
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1f

    .line 255
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_1f

    .line 259
    :cond_9
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$4;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$4;-><init>(Ljava/util/UUID;)V

    .line 260
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p0

    .line 269
    new-instance p1, Lcom/facebook/share/internal/ShareInternalUtility$5;

    invoke-direct {p1}, Lcom/facebook/share/internal/ShareInternalUtility$5;-><init>()V

    .line 270
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-static {p0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    return-object p1

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "postId"

    .line 139
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 140
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "com.facebook.platform.extra.POST_ID"

    .line 142
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string v0, "post_id"

    .line 145
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)",
            "Lcom/facebook/share/internal/ResultProcessor;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$1;

    invoke-direct {v0, p0, p0}, Lcom/facebook/share/internal/ShareInternalUtility$1;-><init>(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    return-object v0
.end method

.method public static getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_32

    .line 684
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 688
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance p0, Lcom/facebook/share/internal/ShareInternalUtility$9;

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$9;-><init>(Ljava/util/UUID;)V

    .line 692
    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p0

    .line 701
    new-instance p1, Lcom/facebook/share/internal/ShareInternalUtility$10;

    invoke-direct {p1}, Lcom/facebook/share/internal/ShareInternalUtility$10;-><init>()V

    .line 702
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;

    move-result-object p1

    .line 717
    invoke-static {p0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 719
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTextureUrlBundle(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;
    .registers 8

    if-eqz p0, :cond_42

    .line 331
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getTextures()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_42

    .line 335
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/share/model/CameraEffectTextures;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    invoke-virtual {p0, v3}, Lcom/facebook/share/model/CameraEffectTextures;->getTextureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/facebook/share/model/CameraEffectTextures;->getTextureBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v4

    .line 340
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v4}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 344
    :cond_3e
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    return-object v0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUriExtension(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 763
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    .line 764
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    return-object v0

    .line 768
    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    .line 285
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_26

    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p0

    .line 290
    invoke-static {p1, p0}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p0

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 297
    invoke-virtual {p0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z
    .registers 5

    .line 150
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getAppCallFromActivityResult(IILandroid/content/Intent;)Lcom/facebook/internal/AppCall;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 155
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Ljava/util/UUID;)V

    const/4 p1, 0x1

    if-nez p3, :cond_13

    return p1

    .line 161
    :cond_13
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 163
    instance-of p2, v0, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz p2, :cond_25

    .line 164
    invoke-virtual {p3, p0}, Lcom/facebook/share/internal/ResultProcessor;->onCancel(Lcom/facebook/internal/AppCall;)V

    goto :goto_30

    .line 166
    :cond_25
    invoke-virtual {p3, p0, v0}, Lcom/facebook/share/internal/ResultProcessor;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    goto :goto_30

    .line 170
    :cond_29
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    .line 171
    invoke-virtual {p3, p0, p2}, Lcom/facebook/share/internal/ResultProcessor;->onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V

    :goto_30
    return p1
.end method

.method public static invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 88
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_a

    .line 89
    check-cast p1, Lcom/facebook/FacebookException;

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    return-void

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error preparing share content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphResponse;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 107
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "Unexpected error sharing."

    .line 111
    :cond_12
    invoke-static {p0, p2, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    goto :goto_19

    .line 113
    :cond_16
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method static invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cancelled"

    const/4 v1, 0x0

    .line 539
    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_b

    .line 541
    invoke-interface {p0}, Lcom/facebook/FacebookCallback;->onCancel()V

    :cond_b
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_e

    .line 571
    invoke-interface {p0, p1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_e
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Lcom/facebook/GraphResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "error"

    .line 554
    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_f

    .line 556
    new-instance v0, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v0, p1, p2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_f
    return-void
.end method

.method static invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "error"

    .line 561
    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_f

    .line 563
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_f
    return-void
.end method

.method static invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "succeeded"

    const/4 v1, 0x0

    .line 546
    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->logShareResult(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_10

    .line 548
    new-instance v0, Lcom/facebook/share/Sharer$Result;

    invoke-direct {v0, p1}, Lcom/facebook/share/Sharer$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private static logShareResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 576
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v1, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_share_dialog_outcome"

    .line 579
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    const-string p0, "error_message"

    .line 582
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string p0, "fb_share_dialog_result"

    .line 584
    invoke-virtual {v1, p0, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 9

    .line 601
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "file"

    .line 602
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 604
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const-string v2, "me/staging_resources"

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 649
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 650
    new-instance v0, Ljava/io/File;

    .line 651
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-static {p0, v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    .line 652
    :cond_14
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 656
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 658
    new-instance v5, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 659
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 661
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const-string v4, "me/staging_resources"

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1

    .line 653
    :cond_39
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/high16 v0, 0x10000000

    .line 624
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 625
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 627
    new-instance v5, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 628
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 630
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const-string v4, "me/staging_resources"

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 235
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_f

    .line 240
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$3;

    invoke-direct {v0, p0, p2}, Lcom/facebook/share/internal/ShareInternalUtility$3;-><init>(ILcom/facebook/FacebookCallback;)V

    .line 241
    invoke-virtual {p1, p0, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    .line 236
    :cond_f
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerStaticShareCallback(I)V
    .registers 2

    .line 220
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$2;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/ShareInternalUtility$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public static removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 433
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 434
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 435
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 436
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1b

    .line 437
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_25

    .line 438
    :cond_1b
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_25

    .line 439
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 441
    :cond_25
    :goto_25
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2b
    return-object v0
.end method

.method public static removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .registers 11

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 454
    :cond_4
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 455
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 456
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 457
    :goto_13
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7a

    .line 458
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 461
    instance-of v6, v5, Lorg/json/JSONObject;

    const/4 v7, 0x1

    if-eqz v6, :cond_2d

    .line 462
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5, v7}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_37

    .line 463
    :cond_2d
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_37

    .line 464
    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5, v7}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonArray(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v5

    .line 467
    :cond_37
    :goto_37
    invoke-static {v4}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 468
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 469
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz p1, :cond_66

    if-eqz v7, :cond_53

    const-string v8, "fbsdk"

    .line 472
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 473
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_77

    :cond_53
    if-eqz v7, :cond_62

    const-string v4, "og"

    .line 474
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    goto :goto_62

    .line 477
    :cond_5e
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_77

    .line 475
    :cond_62
    :goto_62
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_77

    :cond_66
    if-eqz v7, :cond_74

    const-string v8, "fb"

    .line 479
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 480
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_77

    .line 482
    :cond_74
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 486
    :cond_7a
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_85

    const-string p0, "data"

    .line 487
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_85} :catch_86

    :cond_85
    return-object v0

    .line 492
    :catch_86
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Failed to create json object from share content"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method public static toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v2, Lcom/facebook/share/internal/ShareInternalUtility$7;

    invoke-direct {v2, p0, v1}, Lcom/facebook/share/internal/ShareInternalUtility$7;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    .line 354
    invoke-static {v0, v2}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0

    .line 380
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 382
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v0, "place"

    .line 383
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 388
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    :cond_2e
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_66

    const-string v0, "tags"

    .line 393
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_42

    .line 394
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_46

    .line 395
    :cond_42
    invoke-static {v1}, Lcom/facebook/internal/Utility;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    .line 397
    :goto_46
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPeopleIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 400
    :cond_5e
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_66
    return-object p0
.end method

.method public static toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    .line 410
    new-instance v0, Lcom/facebook/share/internal/ShareInternalUtility$8;

    invoke-direct {v0}, Lcom/facebook/share/internal/ShareInternalUtility$8;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
