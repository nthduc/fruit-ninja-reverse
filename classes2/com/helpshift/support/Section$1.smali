.class final Lcom/helpshift/support/Section$1;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/helpshift/support/Section;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/helpshift/support/Section;
    .registers 3

    .line 11
    new-instance v0, Lcom/helpshift/support/Section;

    invoke-direct {v0, p1}, Lcom/helpshift/support/Section;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/helpshift/support/Section$1;->createFromParcel(Landroid/os/Parcel;)Lcom/helpshift/support/Section;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/helpshift/support/Section;
    .registers 2

    .line 16
    new-array p1, p1, [Lcom/helpshift/support/Section;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/helpshift/support/Section$1;->newArray(I)[Lcom/helpshift/support/Section;

    move-result-object p1

    return-object p1
.end method
