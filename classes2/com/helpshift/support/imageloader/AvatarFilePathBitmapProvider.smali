.class public Lcom/helpshift/support/imageloader/AvatarFilePathBitmapProvider;
.super Lcom/helpshift/support/imageloader/FilePathBitmapProvider;
.source "AvatarFilePathBitmapProvider.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/helpshift/support/imageloader/FilePathBitmapProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/helpshift/util/ImageUtil;->decodeAvatarImageFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBitmap(IZLcom/helpshift/util/Callback;)V
    .registers 4

    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/support/imageloader/FilePathBitmapProvider;->getBitmap(IZLcom/helpshift/util/Callback;)V

    return-void
.end method

.method public bridge synthetic getSource()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    invoke-super {p0}, Lcom/helpshift/support/imageloader/FilePathBitmapProvider;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
