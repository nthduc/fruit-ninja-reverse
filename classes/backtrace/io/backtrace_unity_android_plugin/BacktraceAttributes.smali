.class public Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;
.super Ljava/lang/Object;
.source "BacktraceAttributes.java"


# static fields
.field private static final transient LOG_TAG:Ljava/lang/String; = "BacktraceAttributes"

.field private static _attributeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    .line 23
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "FDSize"

    const-string v2, "descriptor.count"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmPeak"

    const-string v2, "vm.vma.peak"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmSize"

    const-string v2, "vm.vma.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmLck"

    const-string v2, "vm.locked.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmHWM"

    const-string v2, "vm.rss.peak"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmRSS"

    const-string v2, "vm.rss.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmStk"

    const-string v2, "vm.stack.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmData"

    const-string v2, "vm.data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmExe"

    const-string v2, "vm.exe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmLib"

    const-string v2, "vm.shared.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmPTE"

    const-string v2, "vm.pte.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmSwap"

    const-string v2, "vm.swap.size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "State"

    const-string v2, "state"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "voluntary_ctxt_switches"

    const-string v2, "sched.cs.voluntary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "nonvoluntary_ctxt_switches"

    const-string v2, "sched.cs.involuntary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "SigPnd"

    const-string v2, "vm.sigpnd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "ShdPnd"

    const-string v2, "vm.shdpnd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Threads"

    const-string v2, "vm.threads"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "MemTotal"

    const-string v2, "system.memory.total"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "MemFree"

    const-string v2, "system.memory.free"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Buffers"

    const-string v2, "system.memory.buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Cached"

    const-string v2, "system.memory.cached"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "SwapCached"

    const-string v2, "system.memory.swap.cached"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Active"

    const-string v2, "system.memory.active"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Inactive"

    const-string v2, "system.memory.inactive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "SwapTotal"

    const-string v2, "system.memory.swap.total"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "SwapFree"

    const-string v2, "system.memory.swap.free"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Dirty"

    const-string v2, "system.memory.dirty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Writeback"

    const-string v2, "system.memory.writeback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "Slab"

    const-string v2, "system.memory.slab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmallocTotal"

    const-string v2, "system.memory.vmalloc.total"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmallocUsed"

    const-string v2, "system.memory.vmalloc.used"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    const-string v1, "VmallocChunk"

    const-string v2, "system.memory.vmalloc.chunk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isPowerSavingMode()Z
    .registers 3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_8
    iget-object v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 85
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method private readAttributesFromFile(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    :try_start_a
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    :goto_14
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    const-string v1, ":"

    const/4 v2, 0x2

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 115
    sget-object v3, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_14

    .line 118
    :cond_31
    sget-object v3, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->_attributeMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 119
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "kB"

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    const/16 v3, 0x6b

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_56
    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 125
    :cond_5a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5d} :catch_5e

    goto :goto_82

    :catch_5e
    move-exception p1

    .line 127
    sget-object v0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read process information. Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "parseError"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_82
    return-object p2
.end method


# virtual methods
.method public GetAttributes(Landroid/content/Context;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->getProcessAttributes()Ljava/util/HashMap;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->getAppUsedStorageSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app.storage_used"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->getCpuTemperature()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device.cpu.temperature"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->isPowerSavingMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device.is_power_saving_mode"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "culture"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device.sdk"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "device.manufacturer"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    return-object p1
.end method

.method public getAppUsedStorageSize()Ljava/lang/String;
    .registers 6

    .line 157
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    .line 159
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    sub-long/2addr v3, v1

    goto :goto_14

    :catch_e
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v3, -0x1

    .line 164
    :goto_14
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpuTemperature()Ljava/lang/String;
    .registers 5

    const-string v0, "0.0"

    .line 138
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "cat sys/class/thermal/thermal_zone0/temp"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 140
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    return-object v0

    .line 146
    :cond_24
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_2f

    :catch_2f
    return-object v0
.end method

.method public getProcessAttributes()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-gez v1, :cond_13

    .line 94
    sget-object v1, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to read process id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_13
    const/4 v2, 0x1

    .line 97
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "/proc/%d/status"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-direct {p0, v1, v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->readAttributesFromFile(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "/proc/meminfo"

    .line 99
    invoke-direct {p0, v1, v0}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceAttributes;->readAttributesFromFile(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
