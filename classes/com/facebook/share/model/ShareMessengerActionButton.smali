.class public abstract Lcom/facebook/share/model/ShareMessengerActionButton;
.super Ljava/lang/Object;
.source "ShareMessengerActionButton.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareMessengerActionButton$Builder;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    # getter for: Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerActionButton$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    iget-object p2, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method