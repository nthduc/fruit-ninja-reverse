.class public final Lcom/google/android/gms/internal/ads/zzvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzadm:I

.field private zzadn:I

.field private zzado:Ljava/lang/String;

.field private zzbny:Z

.field private zzchb:J

.field private zzchc:I

.field private zzchd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzche:Z

.field private zzchf:Ljava/lang/String;

.field private zzchg:Lcom/google/android/gms/internal/ads/zzaag;

.field private zzchh:Ljava/lang/String;

.field private zzchi:Landroid/os/Bundle;

.field private zzchj:Landroid/os/Bundle;

.field private zzchk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchl:Ljava/lang/String;

.field private zzchm:Ljava/lang/String;

.field private zzchn:Z

.field private zzchp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchb:J

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchc:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchd:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzche:Z

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzadm:I

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzbny:Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchf:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zznb:Landroid/location/Location;

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchh:Ljava/lang/String;

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchi:Landroid/os/Bundle;

    .line 14
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchj:Landroid/os/Bundle;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchk:Ljava/util/List;

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchl:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchm:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchn:Z

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzadn:I

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzado:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzpj()Lcom/google/android/gms/internal/ads/zzvg;
    .registers 27

    move-object/from16 v0, p0

    .line 23
    new-instance v25, Lcom/google/android/gms/internal/ads/zzvg;

    move-object/from16 v1, v25

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchb:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvj;->extras:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchc:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchd:Ljava/util/List;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzadm:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchi:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchj:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchk:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzadn:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchp:Ljava/util/List;

    move-object/from16 v24, v2

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaag;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzuy;ILjava/lang/String;Ljava/util/List;)V

    return-object v25
.end method
