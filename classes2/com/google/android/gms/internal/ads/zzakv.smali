.class final synthetic Lcom/google/android/gms/internal/ads/zzakv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakh;


# instance fields
.field private final zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

.field private final zzdhn:Lcom/google/android/gms/internal/ads/zzaki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhn:Lcom/google/android/gms/internal/ads/zzaki;

    return-void
.end method


# virtual methods
.method public final zzti()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhj:Lcom/google/android/gms/internal/ads/zzakr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhm:Lcom/google/android/gms/internal/ads/zzalm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdhn:Lcom/google/android/gms/internal/ads/zzaki;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaky;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzaki;)V

    sget v0, Lcom/google/android/gms/internal/ads/zzalg;->zzdhx:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
