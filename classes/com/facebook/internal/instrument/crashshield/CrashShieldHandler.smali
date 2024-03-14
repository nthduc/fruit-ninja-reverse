.class public Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;
.super Ljava/lang/Object;
.source "CrashShieldHandler.java"


# static fields
.field private static enabled:Z

.field private static final sCrashingObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->sCrashingObjects:Ljava/util/Set;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable()V
    .registers 1

    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    return-void
.end method

.method public static handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 3

    .line 44
    sget-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 48
    :cond_5
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->sCrashingObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 50
    invoke-static {p0}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->execute(Ljava/lang/Throwable;)V

    .line 51
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    .line 53
    :cond_1c
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->scheduleCrashInDebug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isObjectCrashing(Ljava/lang/Object;)Z
    .registers 2

    .line 57
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->sCrashingObjects:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static methodFinished(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method public static reset()V
    .registers 0

    .line 63
    invoke-static {}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->resetCrashingObjects()V

    return-void
.end method

.method public static resetCrashingObjects()V
    .registers 1

    .line 67
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->sCrashingObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private static scheduleCrashInDebug(Ljava/lang/Throwable;)V
    .registers 1

    return-void
.end method
