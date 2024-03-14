.class public final Lcom/google/android/gms/internal/ads/zzdok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

.field public final zzdly:Lcom/google/android/gms/internal/ads/zzadu;

.field public final zzdsi:Lcom/google/android/gms/internal/ads/zzajc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzgtu:I

.field public final zzgvi:Z

.field public final zzhey:Lcom/google/android/gms/internal/ads/zzxq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzhez:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

.field public final zzhfb:Ljava/lang/String;

.field public final zzhfc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhfd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

.field public final zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final zzhfg:Lcom/google/android/gms/internal/ads/zzxk;

.field public final zzhfh:Lcom/google/android/gms/internal/ads/zzdob;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdom;)V
    .registers 28

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zza(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzb(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzc(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzxq;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhey:Lcom/google/android/gms/internal/ads/zzxq;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzvg;->versionCode:I

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzvg;->extras:Landroid/os/Bundle;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzbny:Z

    if-nez v2, :cond_55

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzn(Lcom/google/android/gms/internal/ads/zzdom;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_55

    :cond_52
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_57

    :cond_55
    :goto_55
    const/4 v2, 0x1

    const/4 v11, 0x1

    .line 15
    :goto_57
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchf:Ljava/lang/String;

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Lcom/google/android/gms/internal/ads/zzaag;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    move-object/from16 v16, v2

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/Bundle;

    move-object/from16 v17, v2

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchk:Ljava/util/List;

    move-object/from16 v18, v2

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchl:Ljava/lang/String;

    move-object/from16 v19, v2

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchm:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchn:Z

    move/from16 v21, v2

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzcho:Lcom/google/android/gms/internal/ads/zzuy;

    move-object/from16 v22, v2

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    move/from16 v23, v2

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    move-object/from16 v24, v2

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchp:Ljava/util/List;

    move-object/from16 v25, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaag;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzuy;ILjava/lang/String;Ljava/util/List;)V

    .line 29
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzo(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d1

    .line 32
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzo(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    goto :goto_df

    .line 33
    :cond_d1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzp(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object v1

    if-eqz v1, :cond_de

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzp(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadu;->zzddn:Lcom/google/android/gms/internal/ads/zzaak;

    goto :goto_df

    :cond_de
    move-object v1, v2

    .line 36
    :goto_df
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzd(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zze(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfd:Ljava/util/ArrayList;

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzd(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_f5

    move-object v1, v2

    goto :goto_10e

    .line 42
    :cond_f5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzp(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object v1

    if-nez v1, :cond_10a

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadu;

    new-instance v3, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_10e

    .line 44
    :cond_10a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzp(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object v1

    .line 45
    :goto_10e
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzf(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzg(Lcom/google/android/gms/internal/ads/zzdom;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzgtu:I

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzh(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzi(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfg:Lcom/google/android/gms/internal/ads/zzxk;

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzj(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzajc;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzk(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzdod;

    move-result-object v1

    .line 52
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdob;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdob;-><init>(Lcom/google/android/gms/internal/ads/zzdod;Lcom/google/android/gms/internal/ads/zzdoa;)V

    .line 53
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzhfh:Lcom/google/android/gms/internal/ads/zzdob;

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdom;->zzl(Lcom/google/android/gms/internal/ads/zzdom;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdok;->zzgvi:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzdon;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdok;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    return-void
.end method


# virtual methods
.method public final zzati()Lcom/google/android/gms/internal/ads/zzafy;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdok;->zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjw()Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v0

    return-object v0
.end method
