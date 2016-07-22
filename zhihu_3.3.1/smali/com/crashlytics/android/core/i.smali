.class Lcom/crashlytics/android/core/i;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/i$c;,
        Lcom/crashlytics/android/core/i$a;,
        Lcom/crashlytics/android/core/i$d;,
        Lcom/crashlytics/android/core/i$b;
    }
.end annotation


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final j:Ljava/io/File;

.field private final k:Ljava/io/File;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Lcom/crashlytics/android/core/f;

.field private final n:Lio/fabric/sdk/android/services/common/IdManager;

.field private final o:Lcom/crashlytics/android/core/e;

.field private final p:Lcom/crashlytics/android/core/q;

.field private final q:Lcom/crashlytics/android/core/m;

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/crashlytics/android/core/i$1;

    invoke-direct {v0}, Lcom/crashlytics/android/core/i$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/i;->a:Ljava/io/FilenameFilter;

    .line 126
    new-instance v0, Lcom/crashlytics/android/core/i$6;

    invoke-direct {v0}, Lcom/crashlytics/android/core/i$6;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/i;->b:Ljava/util/Comparator;

    .line 133
    new-instance v0, Lcom/crashlytics/android/core/i$7;

    invoke-direct {v0}, Lcom/crashlytics/android/core/i$7;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/i;->c:Ljava/util/Comparator;

    .line 143
    new-instance v0, Lcom/crashlytics/android/core/i$8;

    invoke-direct {v0}, Lcom/crashlytics/android/core/i$8;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/i;->d:Ljava/io/FilenameFilter;

    .line 150
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/i;->e:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/i;->f:Ljava/util/Map;

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/core/i;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/f;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/core/aa;Lcom/crashlytics/android/core/e;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    iput-object p1, p0, Lcom/crashlytics/android/core/i;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 211
    iput-object p3, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    .line 212
    iput-object p4, p0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    .line 213
    iput-object p6, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    .line 214
    invoke-interface {p5}, Lcom/crashlytics/android/core/aa;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/i;->r:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    invoke-virtual {p6}, Lcom/crashlytics/android/core/e;->w()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    .line 218
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/i;->k:Ljava/io/File;

    .line 220
    invoke-virtual {p6}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/crashlytics/android/core/q;

    iget-object v2, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/crashlytics/android/core/q;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/i;->p:Lcom/crashlytics/android/core/q;

    .line 222
    new-instance v1, Lcom/crashlytics/android/core/m;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/i;->q:Lcom/crashlytics/android/core/m;

    .line 225
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Found previous crash marker."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->r()V

    .line 228
    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/g;)V

    .line 230
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 634
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 636
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->n()[Ljava/io/File;

    move-result-object v3

    .line 637
    array-length v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 639
    :goto_0
    if-ge v1, v4, :cond_0

    .line 640
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 641
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/i;->p:Lcom/crashlytics/android/core/q;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/q;->a(Ljava/util/Set;)V

    .line 646
    new-instance v1, Lcom/crashlytics/android/core/i$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/crashlytics/android/core/i$a;-><init>(Lcom/crashlytics/android/core/i$1;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 648
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 649
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 650
    sget-object v6, Lcom/crashlytics/android/core/i;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 652
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 653
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 655
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 656
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming open session file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 648
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    :cond_2
    return-void
.end method

.method private static a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    :goto_0
    return-void

    .line 1210
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/InputStream;Lcom/crashlytics/android/core/CodedOutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1214
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1183
    sget-object v2, Lcom/crashlytics/android/core/i;->g:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1184
    new-instance v5, Lcom/crashlytics/android/core/i$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1187
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1188
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1183
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    goto :goto_1

    .line 1196
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v7

    .line 1015
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    .line 1016
    invoke-static {v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->c(Landroid/content/Context;)F

    move-result v17

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->q:Lcom/crashlytics/android/core/m;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/m;->a()Z

    move-result v2

    invoke-static {v7, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Z)I

    move-result v18

    .line 1019
    invoke-static {v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->d(Landroid/content/Context;)Z

    move-result v19

    .line 1020
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1021
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->b()J

    move-result-wide v8

    invoke-static {v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;)J

    move-result-wide v10

    sub-long v20, v8, v10

    .line 1023
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Ljava/lang/String;)J

    move-result-wide v22

    .line 1026
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    .line 1028
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1029
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->n()Ljava/lang/String;

    move-result-object v16

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->c()Ljava/lang/String;

    move-result-object v15

    .line 1034
    if-eqz p6, :cond_0

    .line 1035
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1036
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1037
    const/4 v2, 0x0

    .line 1038
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v6, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1039
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v9, v6

    .line 1040
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    .line 1042
    goto :goto_0

    .line 1046
    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1050
    :cond_1
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v7, v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1052
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1063
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/core/i;->p:Lcom/crashlytics/android/core/q;

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/q;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;FIZJJ)V

    .line 1068
    return-void

    .line 1054
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->g()Ljava/util/Map;

    move-result-object v2

    .line 1055
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 1059
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1167
    sget-object v1, Lio/fabric/sdk/android/services/common/CommonUtils;->a:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1169
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1171
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1180
    :cond_0
    return-void
.end method

.method private a(Lcom/crashlytics/android/core/a/a/d;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 797
    .line 800
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->k()Ljava/lang/String;

    move-result-object v0

    .line 802
    if-nez v0, :cond_0

    .line 803
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 828
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 810
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 812
    new-instance v2, Lcom/crashlytics/android/core/d;

    iget-object v3, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionCrash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    :try_start_2
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 815
    new-instance v3, Lcom/crashlytics/android/core/s;

    iget-object v4, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/s;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/core/s;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 817
    new-instance v4, Lcom/crashlytics/android/core/q;

    iget-object v5, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v5}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-direct {v4, v5, v6, v0}, Lcom/crashlytics/android/core/q;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 820
    invoke-static {p1, v4, v3, v1}, Lcom/crashlytics/android/core/t;->a(Lcom/crashlytics/android/core/a/a/d;Lcom/crashlytics/android/core/q;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 827
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 828
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 823
    :goto_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 827
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 828
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 828
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 827
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 822
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/core/d;)V
    .locals 4
    .parameter

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/core/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/crashlytics/android/core/g;)V
    .locals 4
    .parameter

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1264
    :goto_0
    return-void

    .line 1258
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/core/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/i;Lcom/crashlytics/android/core/a/a/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/a/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/core/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/i;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/core/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/i;->a(Z)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1077
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collecting session parts for ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    new-instance v0, Lcom/crashlytics/android/core/i$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionCrash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1081
    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 1082
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v5, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    new-instance v3, Lcom/crashlytics/android/core/i$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1087
    if-eqz v5, :cond_2

    array-length v3, v5

    if-lez v3, :cond_2

    move v3, v1

    .line 1088
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Session %s has non-fatal exceptions: %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    .line 1092
    :cond_0
    invoke-direct {p0, p2, v5, p3}, Lcom/crashlytics/android/core/i;->a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object v1

    .line 1094
    if-eqz v0, :cond_3

    aget-object v0, v4, v2

    .line 1095
    :goto_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    .line 1101
    :goto_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/i;->a(Ljava/lang/String;)V

    .line 1104
    return-void

    :cond_1
    move v0, v2

    .line 1081
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 1087
    goto :goto_1

    .line 1094
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1097
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No events present for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1111
    if-eqz p4, :cond_1

    .line 1117
    :goto_0
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/d;

    iget-object v3, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 1120
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collecting SessionStart data for session ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-static {v1, p1}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    .line 1124
    const/4 v3, 0x4

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 1125
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IZ)V

    .line 1127
    invoke-direct {p0, v1, p2}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V

    .line 1129
    invoke-static {v1, p3, p2}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    .line 1131
    if-eqz v0, :cond_0

    .line 1132
    invoke-static {v1, p4}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    .line 1135
    :cond_0
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(II)V

    .line 1137
    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1147
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1156
    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1159
    :goto_1
    return-void

    .line 1111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1139
    :goto_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write session file for session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1141
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1147
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0, v2}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/d;)V

    goto :goto_1

    .line 1147
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1156
    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1147
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1138
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;Lcom/crashlytics/android/core/CodedOutputStream;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1220
    new-array v1, p2, [B

    .line 1221
    const/4 v0, 0x0

    .line 1224
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1226
    add-int/2addr v0, v2

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p1, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a([B)V

    .line 1230
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/i;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 564
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v1, Lcom/crashlytics/android/core/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/core/i;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/crashlytics/android/core/ac;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 616
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 883
    .line 886
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/d;

    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BeginSession"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 889
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Crashlytics Android SDK/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v6}, Lcom/crashlytics/android/core/e;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 893
    invoke-static {v1, p1, v0, v4, v5}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 898
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 899
    const-string v0, "Failed to close begin session file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 901
    return-void

    .line 894
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 895
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 896
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 899
    const-string v1, "Failed to close begin session file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 898
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 894
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->p()V

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/i;->b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i;->d()V

    .line 275
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->l()V

    .line 277
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i;->f()V

    .line 279
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->s()V

    .line 282
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 487
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 489
    :goto_0
    add-int/lit8 v1, v0, 0x8

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/i;->a(I)V

    .line 491
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->n()[Ljava/io/File;

    move-result-object v1

    .line 493
    array-length v2, v1

    if-gt v2, v0, :cond_1

    .line 494
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_1
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_1
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-direct {p0, v2}, Lcom/crashlytics/android/core/i;->f(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-static {}, Lcom/crashlytics/android/core/e;->A()Lio/fabric/sdk/android/services/settings/p;

    move-result-object v2

    .line 507
    if-nez v2, :cond_2

    .line 508
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_2
    iget v2, v2, Lio/fabric/sdk/android/services/settings/p;->c:I

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/core/i;->a([Ljava/io/File;II)V

    goto :goto_1
.end method

.method private a([Ljava/io/File;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closing open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 525
    aget-object v0, p1, p2

    .line 526
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, v0, v1, p3}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 524
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/core/i;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 671
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Trimming down to %d logged exceptions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/core/i;->a(Ljava/lang/String;I)V

    .line 675
    new-instance v0, Lcom/crashlytics/android/core/i$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    .line 678
    :cond_0
    return-object p2
.end method

.method static synthetic b(Lcom/crashlytics/android/core/i;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->l()V

    return-void
.end method

.method private b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 758
    .line 761
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->j()Ljava/lang/String;

    move-result-object v0

    .line 763
    if-nez v0, :cond_0

    .line 764
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 782
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 771
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 773
    new-instance v7, Lcom/crashlytics/android/core/d;

    iget-object v2, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    :try_start_2
    invoke-static {v7}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 775
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 781
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 782
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 777
    :goto_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 781
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 782
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 782
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 781
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 776
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 572
    new-instance v0, Lcom/crashlytics/android/core/i$d;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/i$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 601
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lcom/crashlytics/android/core/i;)Lcom/crashlytics/android/core/e;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 904
    .line 907
    :try_start_0
    new-instance v8, Lcom/crashlytics/android/core/d;

    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :try_start_1
    invoke-static {v8}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 910
    :try_start_2
    iget-object v1, p0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->c()Ljava/lang/String;

    move-result-object v1

    .line 911
    iget-object v2, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->i()Ljava/lang/String;

    move-result-object v2

    .line 912
    iget-object v3, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/e;->l()Ljava/lang/String;

    move-result-object v3

    .line 913
    iget-object v4, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v4}, Lcom/crashlytics/android/core/e;->k()Ljava/lang/String;

    move-result-object v4

    .line 914
    iget-object v5, p0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v5}, Lio/fabric/sdk/android/services/common/IdManager;->b()Ljava/lang/String;

    move-result-object v5

    .line 915
    iget-object v6, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v6}, Lcom/crashlytics/android/core/e;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v6

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v6

    .line 918
    iget-object v7, p0, Lcom/crashlytics/android/core/i;->r:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 925
    const-string v1, "Failed to flush to session app file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 926
    const-string v0, "Failed to close session app file."

    invoke-static {v8, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 928
    return-void

    .line 921
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 922
    :goto_0
    :try_start_3
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 923
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    :catchall_0
    move-exception v0

    move-object v8, v2

    :goto_1
    const-string v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 926
    const-string v1, "Failed to close session app file."

    invoke-static {v8, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 925
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    .line 921
    :catch_1
    move-exception v0

    move-object v2, v8

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 931
    .line 935
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/d;

    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 939
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->g(Landroid/content/Context;)Z

    move-result v0

    .line 941
    invoke-static {v1, v0}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 946
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 947
    const-string v0, "Failed to close session OS file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 949
    return-void

    .line 942
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 943
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 944
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 947
    const-string v1, "Failed to close session OS file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 946
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 942
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 18
    .parameter

    .prologue
    .line 953
    const/4 v4, 0x0

    .line 954
    const/4 v3, 0x0

    .line 956
    :try_start_0
    new-instance v17, Lcom/crashlytics/android/core/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v3

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v2

    .line 960
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/common/IdManager;->h()Ljava/lang/String;

    move-result-object v4

    .line 963
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->a()I

    move-result v5

    .line 964
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 965
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->b()J

    move-result-wide v8

    .line 966
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 967
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->f(Landroid/content/Context;)Z

    move-result v12

    .line 969
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/common/IdManager;->i()Ljava/util/Map;

    move-result-object v13

    .line 971
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->h(Landroid/content/Context;)I

    move-result v14

    .line 973
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 981
    const-string v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 982
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 984
    return-void

    .line 977
    :catch_0
    move-exception v2

    .line 978
    :goto_0
    :try_start_2
    invoke-static {v2, v4}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 979
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :catchall_0
    move-exception v2

    move-object/from16 v17, v4

    :goto_1
    const-string v4, "Failed to flush session device info."

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 982
    const-string v3, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 981
    :catchall_1
    move-exception v2

    move-object/from16 v17, v4

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1

    .line 977
    :catch_1
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 987
    .line 990
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/d;

    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 993
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/i;->g(Ljava/lang/String;)Lcom/crashlytics/android/core/ab;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Lcom/crashlytics/android/core/ab;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1006
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1007
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1009
    :goto_0
    return-void

    .line 1000
    :cond_0
    :try_start_2
    iget-object v3, v0, Lcom/crashlytics/android/core/ab;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/crashlytics/android/core/ab;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/crashlytics/android/core/ab;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1006
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1007
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1003
    :goto_1
    :try_start_3
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/o;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1004
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1006
    :catchall_0
    move-exception v0

    :goto_2
    const-string v3, "Failed to flush session user file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1007
    const-string v1, "Failed to close session user file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1006
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1002
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)Lcom/crashlytics/android/core/ab;
    .locals 4
    .parameter

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/ab;

    iget-object v1, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/e;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/s;

    iget-object v1, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/s;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/s;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/ab;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/crashlytics/android/core/i;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/crashlytics/android/core/i;->f:Ljava/util/Map;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->n()[Ljava/io/File;

    move-result-object v0

    .line 393
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 402
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->n()[Ljava/io/File;

    move-result-object v0

    .line 403
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 466
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 467
    new-instance v1, Lcom/crashlytics/android/core/c;

    iget-object v2, p0, Lcom/crashlytics/android/core/i;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/c;-><init>(Lio/fabric/sdk/android/services/common/IdManager;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/c;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening an new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 473
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/i;->c(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/i;->d(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/i;->e(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->p:Lcom/crashlytics/android/core/q;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/q;->a(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private m()[Ljava/io/File;
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/crashlytics/android/core/i;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private n()[Ljava/io/File;
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i;->e()[Ljava/io/File;

    move-result-object v0

    .line 585
    sget-object v1, Lcom/crashlytics/android/core/i;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 586
    return-object v0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 731
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->w()Ljava/io/File;

    move-result-object v0

    const-string v2, "invalidClsFiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 741
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 745
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error creating crash marker file."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1250
    return-void
.end method

.method private s()V
    .locals 7

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->m()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1290
    iget-object v4, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    new-instance v5, Lcom/crashlytics/android/core/i$c;

    iget-object v6, p0, Lcom/crashlytics/android/core/i;->o:Lcom/crashlytics/android/core/e;

    invoke-direct {v5, v6, v3}, Lcom/crashlytics/android/core/i$c;-><init>(Lcom/crashlytics/android/core/e;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/core/f;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1293
    :cond_0
    return-void
.end method


# virtual methods
.method a([Ljava/io/File;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-direct {p0}, Lcom/crashlytics/android/core/i;->o()V

    .line 705
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 706
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found invalid session part file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 709
    new-instance v4, Lcom/crashlytics/android/core/i$5;

    invoke-direct {v4, p0, v0}, Lcom/crashlytics/android/core/i$5;-><init>(Lcom/crashlytics/android/core/i;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting all part files for invalid session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 719
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v7

    const-string v8, "CrashlyticsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting session file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 723
    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/i$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/i$2;-><init>(Lcom/crashlytics/android/core/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 380
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/i$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/i$3;-><init>(Lcom/crashlytics/android/core/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Z)V

    .line 481
    return-void
.end method

.method e()[Ljava/io/File;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Lcom/crashlytics/android/core/i$b;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/i;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    .line 629
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->j:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/core/i;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/core/i;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/ac;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 631
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    new-instance v1, Lcom/crashlytics/android/core/i$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/i$4;-><init>(Lcom/crashlytics/android/core/i;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/f;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 692
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->q:Lcom/crashlytics/android/core/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/m;->b()V

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/crashlytics/android/core/i;->m:Lcom/crashlytics/android/core/f;

    new-instance v2, Lcom/crashlytics/android/core/i$9;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/i$9;-><init>(Lcom/crashlytics/android/core/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/f;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 260
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 260
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/crashlytics/android/core/i;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 260
    iget-object v1, p0, Lcom/crashlytics/android/core/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
