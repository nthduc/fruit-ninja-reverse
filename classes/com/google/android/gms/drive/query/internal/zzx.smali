.class public final Lcom/google/android/gms/drive/query/internal/zzx;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "OperatorCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzmq:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmr:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzms:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmt:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmu:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmv:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmw:Lcom/google/android/gms/drive/query/internal/zzx;

.field private static final zzmx:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzmy:Lcom/google/android/gms/drive/query/internal/zzx;


# instance fields
.field private final tag:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmq:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 25
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "<"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmr:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 26
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "<="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzms:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 27
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, ">"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmt:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 28
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, ">="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmu:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 29
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmv:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 30
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmw:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 31
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "not"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmx:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 32
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "contains"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzmy:Lcom/google/android/gms/drive/query/internal/zzx;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 16
    :cond_12
    check-cast p1, Lcom/google/android/gms/drive/query/internal/zzx;

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    if-eqz p1, :cond_26

    return v1

    .line 20
    :cond_1d
    iget-object p1, p1, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
