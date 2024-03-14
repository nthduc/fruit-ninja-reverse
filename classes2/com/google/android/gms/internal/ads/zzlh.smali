.class final Lcom/google/android/gms/internal/ads/zzlh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzasq:Lcom/google/android/gms/internal/ads/zzkg;

.field public final zzayl:Lcom/google/android/gms/internal/ads/zzlp;

.field public zzaym:Lcom/google/android/gms/internal/ads/zzln;

.field public zzayn:Lcom/google/android/gms/internal/ads/zzlb;

.field public zzayo:I

.field public zzayp:I

.field public zzayq:I

.field public zzayr:Lcom/google/android/gms/internal/ads/zzkf;

.field public zzays:Lcom/google/android/gms/internal/ads/zzlq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkg;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzban:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzbba:J

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    .line 14
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzbaz:Z

    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayr:Lcom/google/android/gms/internal/ads/zzkf;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzays:Lcom/google/android/gms/internal/ads/zzlq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzlb;)V
    .registers 4

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzlb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayn:Lcom/google/android/gms/internal/ads/zzlb;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzkg;->zze(Lcom/google/android/gms/internal/ads/zzho;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlh;->reset()V

    return-void
.end method
