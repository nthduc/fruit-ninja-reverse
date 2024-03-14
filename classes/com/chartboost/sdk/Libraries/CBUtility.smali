.class public final Lcom/chartboost/sdk/Libraries/CBUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result p1

    mul-float p0, p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static a(ILandroid/content/Context;)I
    .registers 2

    int-to-float p0, p0

    .line 2
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 23
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3d

    aget-object v3, p0, v2

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 29
    :cond_2b
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz p1, :cond_3a

    .line 31
    invoke-static {v3, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3d
    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILcom/chartboost/sdk/Model/h;)V
    .registers 5

    if-eqz p0, :cond_3d

    .line 6
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 8
    iget-boolean v1, p2, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p2, Lcom/chartboost/sdk/Model/h;->z:Z

    if-nez v1, :cond_1e

    :cond_14
    if-nez p1, :cond_3d

    iget-boolean p1, p2, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz p1, :cond_3d

    iget-boolean p1, p2, Lcom/chartboost/sdk/Model/h;->h:Z

    if-eqz p1, :cond_3d

    .line 11
    :cond_1e
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result p1

    if-nez p1, :cond_28

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_28
    const/4 p2, 0x2

    if-ne p1, p2, :cond_31

    const/16 p1, 0x9

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_31
    if-ne p1, v0, :cond_38

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_38
    const/16 p1, 0x8

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static a()Z
    .registers 2

    .line 4
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_46

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_46

    .line 38
    :cond_22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_45

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v1, v2, :cond_45

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    const/16 v1, 0xff

    if-eq p0, v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :cond_46
    :goto_46
    return v0
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z
    .registers 2

    .line 19
    sget-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_8

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static b(Landroid/app/Activity;ILcom/chartboost/sdk/Model/h;)V
    .registers 4

    if-eqz p0, :cond_22

    .line 5
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 7
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/h;->z:Z

    if-nez v0, :cond_1e

    :cond_14
    if-nez p1, :cond_22

    iget-boolean p1, p2, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz p1, :cond_22

    iget-boolean p1, p2, Lcom/chartboost/sdk/Model/h;->h:Z

    if-eqz p1, :cond_22

    :cond_1e
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_22
    :goto_22
    return-void
.end method

.method private static b()Z
    .registers 8

    const-string v0, "/sbin/su"

    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    const-string v3, "/data/local/xbin/su"

    const-string v4, "/data/local/bin/su"

    const-string v5, "/system/sd/xbin/su"

    const-string v6, "/system/bin/failsafe/su"

    const-string v7, "/data/local/su"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2c

    .line 3
    aget-object v3, v0, v2

    .line 4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    return v1
.end method

.method public static b(I)Z
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method private static c()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ZZZZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .registers 8

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    const-string v1, "window"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v3, v4, :cond_2c

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v7, :cond_38

    goto :goto_36

    .line 13
    :cond_2c
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_38

    :goto_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-eqz v2, :cond_40

    if-ne v2, v7, :cond_3e

    goto :goto_40

    :cond_3e
    xor-int/lit8 v0, v0, 0x1

    :cond_40
    :goto_40
    const/4 v1, 0x3

    if-eqz v0, :cond_4d

    if-eq v2, v6, :cond_4c

    if-eq v2, v7, :cond_4b

    if-eq v2, v1, :cond_4a

    return v5

    :cond_4a
    return v1

    :cond_4b
    return v7

    :cond_4c
    return v6

    :cond_4d
    if-eq v2, v6, :cond_56

    if-eq v2, v7, :cond_55

    if-eq v2, v1, :cond_54

    return v6

    :cond_54
    return v5

    :cond_55
    return v1

    :cond_56
    return v7
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Chartboost-Android-SDK"

    aput-object v2, v0, v1

    sget-object v1, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v1, :cond_e

    const-string v1, ""

    :cond_e
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "8.1.0"

    aput-object v2, v0, v1

    const-string v1, "%s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static throwProguardError(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    const-string v1, "CBUtility"

    if-eqz v0, :cond_c

    const-string p0, "Chartboost library error! Have you used proguard on your application? Make sure to add the line \'-keep class com.chartboost.sdk.** { *; }\' to your proguard config file."

    .line 2
    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_c
    if-eqz p0, :cond_1c

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_1c
    const-string p0, "Unknown Proguard error"

    .line 8
    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method
