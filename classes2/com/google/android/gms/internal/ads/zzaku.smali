.class final synthetic Lcom/google/android/gms/internal/ads/zzaku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzdhl:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzalm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhl:Lcom/google/android/gms/internal/ads/zzalm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhk:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzdhl:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzalm;)V

    return-void
.end method
