.class Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiresIn:J

.field private userCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExpiresIn()J
    .registers 3

    .line 267
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    return-wide v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresIn(J)V
    .registers 3

    .line 271
    iput-wide p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 286
    iget-object p2, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
