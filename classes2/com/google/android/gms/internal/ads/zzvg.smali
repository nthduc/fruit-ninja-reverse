.class public final Lcom/google/android/gms/internal/ads/zzvg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AdRequestParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extras:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation
.end field

.field public final zzadm:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x7
    .end annotation
.end field

.field public final zzadn:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x14
    .end annotation
.end field

.field public final zzado:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x15
    .end annotation
.end field

.field public final zzbny:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field public final zzchb:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzchc:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzchd:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzche:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field

.field public final zzchf:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x9
    .end annotation
.end field

.field public final zzchg:Lcom/google/android/gms/internal/ads/zzaag;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xa
    .end annotation
.end field

.field public final zzchh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xc
    .end annotation
.end field

.field public final zzchi:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xd
    .end annotation
.end field

.field public final zzchj:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xe
    .end annotation
.end field

.field public final zzchk:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzchl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x10
    .end annotation
.end field

.field public final zzchm:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x11
    .end annotation
.end field

.field public final zzchn:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x12
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzcho:Lcom/google/android/gms/internal/ads/zzuy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x13
    .end annotation
.end field

.field public final zzchp:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zznb:Landroid/location/Location;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaag;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzuy;ILjava/lang/String;Ljava/util/List;)V
    .registers 27
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p8    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/internal/ads/zzaag;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p12    # Landroid/location/Location;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p14    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p15    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p16    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .param p19    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x12
        .end annotation
    .end param
    .param p20    # Lcom/google/android/gms/internal/ads/zzuy;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x13
        .end annotation
    .end param
    .param p21    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x14
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x15
        .end annotation
    .end param
    .param p23    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x16
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaag;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/ads/zzuy;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    move-wide v1, p2

    .line 3
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    if-nez p4, :cond_12

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_13

    :cond_12
    move-object v1, p4

    :goto_13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    move v1, p5

    .line 5
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    move v1, p7

    .line 7
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    move v1, p8

    .line 8
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    move v1, p9

    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    if-nez p14, :cond_39

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_3b

    :cond_39
    move-object/from16 v1, p14

    :goto_3b
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    move/from16 v1, p19

    .line 19
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    move/from16 v1, p21

    .line 21
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    if-nez p23, :cond_65

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_67

    :cond_65
    move-object/from16 v1, p23

    :goto_67
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 52
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzvg;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 54
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 55
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    if-ne v0, v2, :cond_be

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    .line 56
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    if-ne v0, v2, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    .line 57
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    if-ne v0, v2, :cond_be

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    if-ne v0, v2, :cond_be

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    if-ne v0, v2, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    .line 58
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    .line 59
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 60
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    .line 61
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    .line 62
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    .line 63
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    .line 64
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    .line 65
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    .line 66
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    if-ne v0, v2, :cond_be

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    if-ne v0, v2, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    .line 67
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    .line 68
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    const/4 p1, 0x1

    return p1

    :cond_be
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x15

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 29
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 33
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    const/4 v3, 0x7

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 35
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    const/16 v3, 0x8

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    const/16 v3, 0xd

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    const/16 v3, 0xe

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    const/16 v3, 0xf

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    const/16 v3, 0x12

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    const/16 v3, 0x13

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 47
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    const/16 v1, 0x14

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    const/16 v1, 0x16

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
