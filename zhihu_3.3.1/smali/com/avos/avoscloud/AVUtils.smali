.class public Lcom/avos/avoscloud/AVUtils;
.super Ljava/lang/Object;
.source "AVUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUtils$1;
    }
.end annotation


# static fields
.field private static final THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_NOT_CONNECTED:I = 0x0

.field public static final TYPE_WIFI:I = 0x1

.field static acu:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final classNameTag:Ljava/lang/String; = "className"

.field private static final dateFormat:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field static emailPattern:Ljava/util/regex/Pattern; = null

.field private static fieldsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final objectIdTag:Ljava/lang/String; = "objectId"

.field static pattern:Ljava/util/regex/Pattern; = null

.field static phoneNumPattern:Ljava/util/regex/Pattern; = null

.field static random:Ljava/util/Random; = null

.field public static final typeTag:Ljava/lang/String; = "__type"

.field static verifyCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    .line 84
    const-string v0, "^[a-zA-Z_][a-zA-Z_0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^\\w+?@\\w+?[.]\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "1\\d{10}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "\\d{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    .line 171
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 789
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->random:Ljava/util/Random;

    .line 802
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public static Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1057
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 439
    if-nez p0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 444
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 445
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez p3, :cond_3

    .line 446
    :cond_2
    invoke-virtual {v4, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkClassName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank class name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid class name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    return-void
.end method

.method public static checkDNSException(ILjava/lang/Throwable;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1092
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknownhostexception"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkMobilePhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkMobileVerifyCode(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 877
    if-nez p0, :cond_1

    .line 878
    const-string v1, "context is null"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 882
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1077
    if-lez p0, :cond_1

    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->isJSONResponse(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    if-eqz p3, :cond_0

    .line 1079
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong response content type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0, v0, p1}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1086
    :cond_0
    const/4 v0, 0x1

    .line 1088
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static collectionNonNullCount(Ljava/util/Collection;)I
    .locals 3
    .parameter

    .prologue
    .line 1012
    const/4 v0, 0x0

    .line 1013
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1014
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    return v0
.end method

.method public static compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1053
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static computeMD5([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 929
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 930
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 931
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 933
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 934
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 935
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 937
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static contains(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 499
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/JSONHelper;->mapFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 500
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/AVObject;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 509
    if-eqz v1, :cond_1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    invoke-virtual {p1, v1, v0, v4}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 519
    :cond_2
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 520
    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 521
    :cond_3
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 522
    check-cast v0, Ljava/util/Map;

    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 524
    :cond_4
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    invoke-virtual {p1, v1, v0, v4}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 529
    :cond_5
    return-void
.end method

.method public static copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 539
    :cond_1
    return-void
.end method

.method public static createArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v1, "__op"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "objects"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object v1
.end method

.method public static createDeleteOpMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v1, "__op"

    const-string v2, "Delete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object v1
.end method

.method public static createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1071
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    return-object v0
.end method

.method public static createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v0, "__op"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 133
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    const-string v0, "objects"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object v0
.end method

.method public static createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v0
.end method

.method public static dataFromMap(Ljava/util/Map;)[B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "base64"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static dateFromMap(Ljava/util/Map;)Ljava/util/Date;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "iso"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static dateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 193
    if-nez v0, :cond_2

    .line 194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 196
    sget-object v2, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 199
    :cond_2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1041
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_1
    return-void
.end method

.method public static fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVFile;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v1, Lcom/avos/avoscloud/AVFile;

    const-string v0, ""

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V

    .line 319
    const-string v0, "metaData"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 321
    :cond_0
    const-string v0, "_name"

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "_name"

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVUtils$1;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    return-object v1

    .line 333
    :pswitch_1
    const-string v0, "objectId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static fileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 901
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVGeoPoint;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "latitude"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 235
    const-string v0, "longitude"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 236
    new-instance v4, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/avos/avoscloud/AVGeoPoint;-><init>(DD)V

    .line 237
    return-object v4
.end method

.method public static getAVObjectClassByClassName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    const-string v0, "_Role"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const-class v0, Lcom/avos/avoscloud/AVRole;

    .line 631
    :goto_0
    return-object v0

    .line 626
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    const-class v0, Lcom/avos/avoscloud/AVUser;

    goto :goto_0

    .line 630
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAVObjectClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1105
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAVObjectCreatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public static getAVObjectUpdatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public static getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    .line 55
    :cond_0
    new-array v0, v1, [Ljava/lang/reflect/Field;

    .line 81
    :cond_1
    :goto_0
    return-object v0

    .line 57
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 58
    if-nez v0, :cond_1

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 63
    :goto_1
    if-eqz p0, :cond_4

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_3

    array-length v0, v3

    :goto_2
    add-int/2addr v0, v2

    .line 66
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move v2, v0

    .line 68
    goto :goto_1

    :cond_3
    move v0, v1

    .line 65
    goto :goto_2

    .line 69
    :cond_4
    new-array v3, v2, [Ljava/lang/reflect/Field;

    .line 71
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 72
    if-eqz v0, :cond_7

    .line 73
    array-length v6, v0

    move v4, v1

    :goto_4
    if-ge v4, v6, :cond_5

    aget-object v7, v0, v4

    .line 74
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 76
    :cond_5
    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v0, v0

    add-int/2addr v0, v2

    :goto_5
    move v2, v0

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 81
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_5
.end method

.method public static getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 997
    const-string v0, "put"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1008
    :cond_0
    :goto_0
    return-object p1

    .line 1001
    :cond_1
    const-string v0, "post"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    const-string v0, "delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1008
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getClass(Ljava/util/Map;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 542
    const-string v0, "__type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 545
    :cond_0
    const-class v0, Ljava/util/Map;

    .line 556
    :goto_0
    return-object v0

    .line 546
    :cond_1
    const-string v1, "Pointer"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    const-class v0, Lcom/avos/avoscloud/AVObject;

    goto :goto_0

    .line 548
    :cond_2
    const-string v1, "GeoPoint"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    const-class v0, Lcom/avos/avoscloud/AVGeoPoint;

    goto :goto_0

    .line 550
    :cond_3
    const-string v1, "Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    const-class v0, [B

    goto :goto_0

    .line 552
    :cond_4
    const-string v1, "Date"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 553
    const-class v0, Ljava/util/Date;

    goto :goto_0

    .line 556
    :cond_5
    const-class v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 966
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 969
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 977
    :goto_0
    return v0

    .line 973
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    goto :goto_0

    .line 975
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 977
    goto :goto_0
.end method

.method public static getConnectivityStatusString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 981
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result v1

    .line 982
    const/4 v0, 0x0

    .line 983
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 984
    const-string v0, "Wifi enabled"

    .line 990
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 986
    const-string v0, "Mobile data enabled"

    goto :goto_0

    .line 987
    :cond_2
    if-nez v1, :cond_0

    .line 988
    const-string v0, "Not connected to Internet"

    goto :goto_0
.end method

.method public static getCurrentTimestamp()J
    .locals 2

    .prologue
    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirectlyClientForUse()Lcom/avos/avoscloud/PaasClient$AVHttpClient;
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getEncodeUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1117
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVRequestParams;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1099
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1101
    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long p2, v0

    .line 958
    :cond_0
    return-wide p2
.end method

.method static getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 950
    :cond_0
    return-object p2
.end method

.method public static getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1122
    const-class v0, Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1123
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1126
    :goto_0
    return-object v0

    .line 1125
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1126
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getNextIMRequestId()I
    .locals 4

    .prologue
    const v3, 0xffff

    .line 805
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 806
    if-le v0, v3, :cond_0

    .line 807
    :goto_0
    if-le v0, v3, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 812
    :cond_0
    return v0
.end method

.method static getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 767
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 768
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 773
    :cond_0
    :goto_0
    return-object p0

    .line 769
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 770
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method static getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 736
    const-string v0, "__type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 738
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 740
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 741
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 742
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 743
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p0, v2

    .line 763
    :cond_2
    :goto_1
    return-object p0

    .line 747
    :cond_3
    const-string v1, "Pointer"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Object"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 748
    :cond_4
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 749
    const-string v1, "__type"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    move-object p0, v0

    .line 751
    goto :goto_1

    .line 752
    :cond_5
    const-string v1, "GeoPoint"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 753
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object p0

    goto :goto_1

    .line 754
    :cond_6
    const-string v1, "Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 755
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object p0

    goto :goto_1

    .line 756
    :cond_7
    const-string v1, "Date"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 757
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object p0

    goto :goto_1

    .line 758
    :cond_8
    const-string v1, "Relation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 759
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    goto :goto_1

    .line 760
    :cond_9
    const-string v1, "File"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    goto :goto_1
.end method

.method static getObjectFrom(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 729
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 732
    :cond_0
    return-object v0
.end method

.method static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 668
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 671
    :cond_0
    return-object v0
.end method

.method private static getParsedList(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 402
    if-nez p1, :cond_1

    .line 403
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 411
    :cond_0
    return-object v0

    .line 405
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 408
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 418
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 421
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    :cond_0
    return-object v2
.end method

.method public static getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 679
    if-nez p0, :cond_1

    .line 680
    const/4 p0, 0x0

    .line 704
    :cond_0
    :goto_0
    return-object p0

    .line 681
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 682
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 683
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 684
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 685
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_5

    .line 686
    if-nez p1, :cond_4

    .line 687
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 689
    :cond_4
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 691
    :cond_5
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_6

    .line 692
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 693
    :cond_6
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 694
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 695
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_8

    .line 696
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 697
    :cond_8
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_9

    .line 698
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 699
    :cond_9
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 700
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 701
    :cond_a
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 792
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 795
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 796
    sget-object v3, Lcom/avos/avoscloud/AVUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUIThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1066
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static hasProperty(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 429
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 430
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    const/4 v0, 0x1

    .line 434
    :cond_0
    return v0

    .line 429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isACL(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 572
    if-eqz p0, :cond_0

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlankContent(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlankString(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 831
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 833
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 844
    :goto_0
    return v0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    const-string v2, "Please add ACCESS_NETWORK_STATE permission in your manifest"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 840
    goto :goto_0

    .line 841
    :catch_1
    move-exception v0

    .line 842
    const-string v1, "Exception: "

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 844
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isData(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 580
    if-eqz p0, :cond_0

    const-string v0, "Bytes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 576
    if-eqz p0, :cond_0

    const-string v0, "Date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigitString(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 176
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 178
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEmptyList(Ljava/util/List;)Z
    .locals 1
    .parameter

    .prologue
    .line 1037
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 584
    if-eqz p0, :cond_0

    const-string v0, "File"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileFromUrulu(Ljava/util/Map;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 589
    .line 590
    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    and-int/2addr v0, v1

    .line 591
    return v0

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGeoPoint(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 568
    if-eqz p0, :cond_0

    const-string v0, "GeoPoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 897
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPointer(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 564
    if-eqz p0, :cond_0

    const-string v0, "Pointer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 887
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 890
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 891
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRelation(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 560
    if-eqz p0, :cond_0

    const-string v0, "Relation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 820
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 822
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    const/4 v0, 0x1

    .line 854
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x0

    .line 857
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    move v1, v0

    .line 861
    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    .line 862
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    const-string v1, "className"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const-string v1, "objectId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    if-nez p1, :cond_2

    .line 389
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    :goto_0
    return-object v0

    .line 391
    :cond_2
    const-string v1, "__type"

    const-string v2, "Object"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static mapFromByteArray([B)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    const-string v1, "__type"

    const-string v2, "Bytes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "base64"

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-object v0
.end method

.method public static mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    const-string v2, "cid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "className"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "key"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v1
.end method

.method public static mapFromDate(Ljava/util/Date;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    const-string v1, "__type"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "iso"

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-object v0
.end method

.method public static mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVFile;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "metaData"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/avos/avoscloud/AVUtils$1;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string v1, "__type"

    const-string v2, "GeoPoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object v0
.end method

.method public static mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "className"

    const-string v2, "_User"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "objectId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 780
    .line 782
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 786
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh,UTF-8 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .parameter

    .prologue
    .line 603
    const-string v0, "_Role"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Lcom/avos/avoscloud/AVRole;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVRole;-><init>()V

    .line 618
    :goto_0
    return-object v0

    .line 605
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    goto :goto_0

    .line 609
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_2

    .line 612
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    new-instance v1, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v2, "New subclass instance failed."

    invoke-direct {v1, v2, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 618
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static newAVObjectByClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0

    :cond_0
    move-object p1, p0

    .line 636
    goto :goto_0
.end method

.method public static objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter

    .prologue
    .line 595
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    .line 598
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method public static parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    .prologue
    .line 343
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    .line 344
    const-string v0, "objectId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 345
    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 346
    return-object v1
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 6
    .parameter

    .prologue
    .line 910
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 914
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 915
    long-to-int v0, v2

    .line 916
    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "File size >= 2 GB"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 919
    :cond_0
    :try_start_1
    new-array v0, v0, [B

    .line 920
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 905
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static restfulCloudData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 357
    if-nez p0, :cond_0

    const-string v0, "{}"

    .line 377
    :goto_0
    return-object v0

    .line 358
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 359
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 361
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_2
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_3

    .line 363
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_4

    .line 365
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_4
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 367
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 369
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_6
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_7

    .line 371
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_7
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_8
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 377
    :cond_9
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static restfulServerData(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 350
    if-nez p0, :cond_0

    const-string v0, "{}"

    .line 353
    :goto_0
    return-object v0

    .line 352
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringFromBytes([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 867
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 871
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 207
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 209
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 493
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 494
    return-void
.end method

.method public static updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 459
    const-string v0, "objectId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    const-string v1, "__type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0, p1, p2, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 489
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isGeoPoint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object v0

    .line 468
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isDate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v0

    .line 471
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 473
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object v0

    .line 474
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 476
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 477
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 478
    :cond_4
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isFileFromUrulu(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 479
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 480
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 481
    :cond_5
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isRelation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    const-string v0, "className"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 483
    :cond_6
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isPointer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 484
    :cond_7
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 485
    invoke-virtual {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 487
    :cond_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public static urlCleanLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1023
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1026
    :cond_0
    return-object p0
.end method
