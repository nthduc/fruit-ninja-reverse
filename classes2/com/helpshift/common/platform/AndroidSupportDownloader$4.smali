.class synthetic Lcom/helpshift/common/platform/AndroidSupportDownloader$4;
.super Ljava/lang/Object;
.source "AndroidSupportDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/platform/AndroidSupportDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$downloader$SupportDownloader$StorageDirType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->values()[Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/common/platform/AndroidSupportDownloader$4;->$SwitchMap$com$helpshift$downloader$SupportDownloader$StorageDirType:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/common/platform/AndroidSupportDownloader$4;->$SwitchMap$com$helpshift$downloader$SupportDownloader$StorageDirType:[I

    sget-object v1, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->INTERNAL_ONLY:Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    invoke-virtual {v1}, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/common/platform/AndroidSupportDownloader$4;->$SwitchMap$com$helpshift$downloader$SupportDownloader$StorageDirType:[I

    sget-object v1, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->EXTERNAL_ONLY:Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    invoke-virtual {v1}, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/helpshift/common/platform/AndroidSupportDownloader$4;->$SwitchMap$com$helpshift$downloader$SupportDownloader$StorageDirType:[I

    sget-object v1, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->EXTERNAL_OR_INTERNAL:Lcom/helpshift/downloader/SupportDownloader$StorageDirType;

    invoke-virtual {v1}, Lcom/helpshift/downloader/SupportDownloader$StorageDirType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
