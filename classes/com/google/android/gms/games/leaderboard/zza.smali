.class public final Lcom/google/android/gms/games/leaderboard/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final zzom:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/zza;->zzom:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzdj()Landroid/os/Bundle;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/zza;->zzom:Landroid/os/Bundle;

    return-object v0
.end method
