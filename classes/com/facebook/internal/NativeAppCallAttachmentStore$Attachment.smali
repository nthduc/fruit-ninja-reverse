.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeAppCallAttachmentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentName:Ljava/lang/String;

.field private final attachmentUrl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final callId:Ljava/util/UUID;

.field private isContentUri:Z

.field private originalUri:Landroid/net/Uri;

.field private shouldCreateFile:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .registers 7

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    .line 223
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    .line 224
    iput-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    const/4 v0, 0x1

    if-eqz p3, :cond_5e

    .line 227
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "content"

    .line 228
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 229
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    .line 230
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2d

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string p3, "media"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_62

    .line 231
    :cond_31
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 232
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_62

    .line 233
    :cond_40
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_47

    goto :goto_62

    .line 234
    :cond_47
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported scheme for media Uri : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    if-eqz p2, :cond_8a

    .line 237
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    .line 242
    :goto_62
    iget-boolean p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez p2, :cond_68

    const/4 p2, 0x0

    goto :goto_70

    :cond_68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_70
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 243
    iget-boolean p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez p2, :cond_7d

    iget-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    .line 245
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    .line 247
    :cond_7d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 246
    invoke-static {p2, p1, p3}, Lcom/facebook/FacebookContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_87
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-void

    .line 239
    :cond_8a
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V
    .registers 5

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 1

    .line 210
    iget-boolean p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 1

    .line 210
    iget-boolean p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    return p0
.end method


# virtual methods
.method public getAttachmentUrl()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    return-object v0
.end method
