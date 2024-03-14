.class public final Lcom/google/android/gms/internal/ads/zzdom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzbny:Z

.field private zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

.field private zzdly:Lcom/google/android/gms/internal/ads/zzadu;

.field private zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

.field private zzgtu:I

.field private zzgvi:Z

.field private zzhey:Lcom/google/android/gms/internal/ads/zzxq;

.field private zzhez:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

.field private zzhfb:Ljava/lang/String;

.field private zzhfc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

.field private zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzhfg:Lcom/google/android/gms/internal/ads/zzxk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzhfj:Lcom/google/android/gms/internal/ads/zzdod;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgtu:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdod;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfj:Lcom/google/android/gms/internal/ads/zzdod;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgvi:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvn;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/lang/String;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzxq;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhey:Lcom/google/android/gms/internal/ads/zzxq;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/util/ArrayList;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfc:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdom;)Ljava/util/ArrayList;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfd:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvs;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzdom;)I
    .registers 1

    .line 95
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgtu:I

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzxk;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfg:Lcom/google/android/gms/internal/ads/zzxk;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzajc;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzdod;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfj:Lcom/google/android/gms/internal/ads/zzdod;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzdom;)Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgvi:Z

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzvg;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzdom;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbny:Z

    return p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzaak;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    return-object p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzdom;)Lcom/google/android/gms/internal/ads/zzadu;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    return-object p0
.end method


# virtual methods
.method public final zzatk()Lcom/google/android/gms/internal/ads/zzvg;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    return-object v0
.end method

.method public final zzatl()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzatm()Lcom/google/android/gms/internal/ads/zzdod;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfj:Lcom/google/android/gms/internal/ads/zzdod;

    return-object v0
.end method

.method public final zzatn()Lcom/google/android/gms/internal/ads/zzdok;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfb:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdok;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdok;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzdon;)V

    return-object v0
.end method

.method public final zzato()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgvi:Z

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_10

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbny:Z

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjv()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfg:Lcom/google/android/gms/internal/ads/zzxk;

    :cond_10
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadu;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzajc;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 4

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzdsi:Lcom/google/android/gms/internal/ads/zzajc;

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaak;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    return-object p0
.end method

.method public final zzbo(Z)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgvi:Z

    return-object p0
.end method

.method public final zzbp(Z)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbny:Z

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaak;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdok;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfj:Lcom/google/android/gms/internal/ads/zzdod;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfh:Lcom/google/android/gms/internal/ads/zzdob;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdod;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdod;

    .line 43
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    .line 46
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 50
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhey:Lcom/google/android/gms/internal/ads/zzxq;

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhey:Lcom/google/android/gms/internal/ads/zzxq;

    .line 54
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfb:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhez:Lcom/google/android/gms/internal/ads/zzaak;

    .line 62
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfc:Ljava/util/ArrayList;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfc:Ljava/util/ArrayList;

    .line 66
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfd:Ljava/util/ArrayList;

    .line 68
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfd:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    .line 72
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzdly:Lcom/google/android/gms/internal/ads/zzadu;

    .line 74
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    .line 76
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    .line 78
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzhff:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzb(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object v0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzdok;->zzgvi:Z

    .line 81
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzdom;->zzgvi:Z

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzxq;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhey:Lcom/google/android/gms/internal/ads/zzxq;

    return-object p0
.end method

.method public final zzc(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdom;"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfc:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdom;"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfd:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    return-object p0
.end method

.method public final zzec(I)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzgtu:I

    return-object p0
.end method

.method public final zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzdom;
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhfa:Lcom/google/android/gms/internal/ads/zzvg;

    return-object p0
.end method

.method public final zzkg()Lcom/google/android/gms/internal/ads/zzvn;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    return-object v0
.end method
