.class public Lcom/facebook/share/internal/NativeDialogParameters;
.super Ljava/lang/Object;
.source "NativeDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 5

    .line 124
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 126
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effect_id"

    invoke-static {p2, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14

    const-string v0, "effect_textures"

    .line 129
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getArguments()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/CameraEffectJSONUtility;->convertToJSON(Lcom/facebook/share/model/CameraEffectArguments;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string p1, "effect_arguments"

    .line 136
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_27} :catch_28

    :cond_27
    return-object p2

    :catch_28
    move-exception p0

    .line 139
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a JSON Object from the provided CameraEffectArguments: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .registers 4

    .line 148
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-static {p1, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    .line 151
    invoke-static {p1, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-static {p1, v1, v0}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUOTE"

    invoke-static {p1, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MESSENGER_LINK"

    invoke-static {p1, v1, v0}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "TARGET_DISPLAY"

    invoke-static {p1, v0, p0}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 184
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 186
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "MEDIA"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;
    .registers 4

    .line 214
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 217
    :try_start_4
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addGenericTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p0

    .line 219
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerGenericTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;
    .registers 4

    .line 246
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 249
    :try_start_4
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addMediaTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p0

    .line 251
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerMediaTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;
    .registers 4

    .line 230
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 233
    :try_start_4
    invoke-static {p1, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addOpenGraphMusicTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p0

    .line 236
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a JSON Object from the provided ShareMessengerOpenGraphMusicTemplateContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .registers 5

    .line 195
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 200
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "PREVIEW_PROPERTY_NAME"

    .line 203
    invoke-static {p2, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ACTION_TYPE"

    .line 204
    invoke-static {p2, v0, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ACTION"

    invoke-static {p2, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 163
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 165
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "PHOTOS"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private static create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    invoke-static {p0, p3}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p1, :cond_b

    const-string v0, "bg_asset"

    .line 268
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_b
    if-eqz p2, :cond_12

    const-string p1, "interactive_asset_uri"

    .line 272
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundColorList()Ljava/util/List;

    move-result-object p1

    .line 276
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 277
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "top_background_color_list"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 282
    :cond_26
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getAttributionLink()Ljava/lang/String;

    move-result-object p0

    const-string p1, "content_url"

    .line 281
    invoke-static {p3, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 5

    .line 172
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 174
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-static {p2, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DESCRIPTION"

    .line 175
    invoke-static {p2, v0, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "VIDEO"

    .line 177
    invoke-static {p2, p0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 4

    const-string v0, "shareContent"

    .line 55
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    .line 56
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_16

    .line 60
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 61
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_ba

    .line 62
    :cond_16
    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_26

    .line 63
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    .line 64
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object p0

    .line 66
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_ba

    .line 67
    :cond_26
    instance-of v0, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_36

    .line 68
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    .line 69
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    goto/16 :goto_ba

    .line 72
    :cond_36
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_67

    .line 73
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 76
    :try_start_3c
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 79
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;

    move-result-object p0
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_49} :catch_4b

    goto/16 :goto_ba

    :catch_4b
    move-exception p0

    .line 81
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_67
    instance-of v0, p1, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_76

    .line 86
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    .line 87
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object p0

    .line 89
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    .line 90
    :cond_76
    instance-of v0, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v0, :cond_85

    .line 91
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 95
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getTextureUrlBundle(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object p0

    .line 97
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    .line 98
    :cond_85
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v0, :cond_90

    .line 99
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 101
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    .line 102
    :cond_90
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v0, :cond_9b

    .line 103
    check-cast p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 105
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    .line 106
    :cond_9b
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v0, :cond_a6

    .line 107
    check-cast p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 109
    invoke-static {p1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    .line 110
    :cond_a6
    instance-of v0, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v0, :cond_b9

    .line 111
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    .line 112
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object p0

    .line 114
    invoke-static {p1, v0, p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_ba

    :cond_b9
    const/4 p0, 0x0

    :goto_ba
    return-object p0
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 5

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "LINK"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLACE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REF"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DATA_FAILURES_FATAL"

    .line 294
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object p1

    .line 297
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "FRIENDS"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 301
    :cond_42
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 303
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HASHTAG"

    invoke-static {v0, p1, p0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    return-object v0
.end method
