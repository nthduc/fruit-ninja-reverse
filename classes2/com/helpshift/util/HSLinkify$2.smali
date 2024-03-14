.class final Lcom/helpshift/util/HSLinkify$2;
.super Ljava/lang/Object;
.source "HSLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/util/HSLinkify;->addLinks(Landroid/text/Spannable;ILcom/helpshift/util/HSLinkify$LinkClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/helpshift/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/helpshift/util/LinkSpec;Lcom/helpshift/util/LinkSpec;)I
    .registers 7

    .line 249
    iget v0, p1, Lcom/helpshift/util/LinkSpec;->start:I

    iget v1, p2, Lcom/helpshift/util/LinkSpec;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    .line 253
    :cond_8
    iget v0, p1, Lcom/helpshift/util/LinkSpec;->start:I

    iget v1, p2, Lcom/helpshift/util/LinkSpec;->start:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_10

    return v3

    .line 257
    :cond_10
    iget v0, p1, Lcom/helpshift/util/LinkSpec;->end:I

    iget v1, p2, Lcom/helpshift/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_17

    return v3

    .line 261
    :cond_17
    iget p1, p1, Lcom/helpshift/util/LinkSpec;->end:I

    iget p2, p2, Lcom/helpshift/util/LinkSpec;->end:I

    if-le p1, p2, :cond_1e

    return v2

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 247
    check-cast p1, Lcom/helpshift/util/LinkSpec;

    check-cast p2, Lcom/helpshift/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/util/HSLinkify$2;->compare(Lcom/helpshift/util/LinkSpec;Lcom/helpshift/util/LinkSpec;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
