.class final synthetic Lcom/google/android/gms/games/internal/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzf$zzaw;


# static fields
.field static final zziw:Lcom/google/android/gms/games/internal/zzf$zzaw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzaw;->zziw:Lcom/google/android/gms/games/internal/zzf$zzaw;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    check-cast p3, Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method
