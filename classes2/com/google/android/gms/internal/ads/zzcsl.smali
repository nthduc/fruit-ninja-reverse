.class final synthetic Lcom/google/android/gms/internal/ads/zzcsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# instance fields
.field private final zzgmz:Lcom/google/android/gms/internal/ads/zzcsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgmz:Lcom/google/android/gms/internal/ads/zzcsm;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zzgmz:Lcom/google/android/gms/internal/ads/zzcsm;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsm;->zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
