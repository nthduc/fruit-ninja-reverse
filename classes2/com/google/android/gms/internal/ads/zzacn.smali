.class public final Lcom/google/android/gms/internal/ads/zzacn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static zzdah:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdai:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdaj:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdak:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdal:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const-string v1, "gads:consent:gmscore:dsid:enabled"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzacj;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacn;->zzdah:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:consent:gmscore:lat:enabled"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzacj;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacn;->zzdai:Lcom/google/android/gms/internal/ads/zzaci;

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacj;

    sget v2, Lcom/google/android/gms/internal/ads/zzack;->zzczz:I

    const-string v3, "gads:consent:gmscore:backend_url"

    const-string v4, "https://adservice.google.com/getconfig/pubvendors"

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzacj;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    sput-object v1, Lcom/google/android/gms/internal/ads/zzacn;->zzdaj:Lcom/google/android/gms/internal/ads/zzaci;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacj;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzack;->zzczx:I

    const-string v4, "gads:consent:gmscore:time_out"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzacj;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 13
    sput-object v1, Lcom/google/android/gms/internal/ads/zzacn;->zzdak:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:consent:gmscore:enabled"

    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzacj;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacn;->zzdal:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/ads/zzadm;)V
    .registers 1

    return-void
.end method
