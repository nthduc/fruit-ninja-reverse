.class public final enum Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;
.super Ljava/lang/Enum;
.source "AttachmentPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/fragments/AttachmentPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

.field public static final enum ATTACHMENT_DRAFT:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

.field public static final enum GALLERY_APP:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 348
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    const/4 v1, 0x0

    const-string v2, "ATTACHMENT_DRAFT"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->ATTACHMENT_DRAFT:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    .line 349
    new-instance v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    const/4 v2, 0x1

    const-string v3, "GALLERY_APP"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->GALLERY_APP:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    const/4 v0, 0x2

    .line 347
    new-array v0, v0, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    sget-object v3, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->ATTACHMENT_DRAFT:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    aput-object v3, v0, v1

    sget-object v1, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->GALLERY_APP:Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->$VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;
    .registers 2

    .line 347
    const-class v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;
    .registers 1

    .line 347
    sget-object v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->$VALUES:[Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    invoke-virtual {v0}, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/support/fragments/AttachmentPreviewFragment$LaunchSource;

    return-object v0
.end method
