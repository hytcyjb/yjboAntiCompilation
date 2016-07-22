.class final Lcom/squareup/wire/CommandLineOptions;
.super Ljava/lang/Object;
.source "CommandLineOptions.java"


# static fields
.field public static final DRY_RUN_FLAG:Ljava/lang/String; = "--dry_run"

.field public static final ENUM_OPTIONS_FLAG:Ljava/lang/String; = "--enum_options="

.field public static final FILES_FLAG:Ljava/lang/String; = "--files="

.field public static final JAVA_OUT_FLAG:Ljava/lang/String; = "--java_out="

.field public static final NO_OPTIONS_FLAG:Ljava/lang/String; = "--no_options"

.field public static final PROTO_PATH_FLAG:Ljava/lang/String; = "--proto_path="

.field public static final QUIET_FLAG:Ljava/lang/String; = "--quiet"

.field public static final REGISTRY_CLASS_FLAG:Ljava/lang/String; = "--registry_class="

.field public static final ROOTS_FLAG:Ljava/lang/String; = "--roots="

.field public static final SERVICE_WRITER_FLAG:Ljava/lang/String; = "--service_writer="

.field public static final SERVICE_WRITER_OPT_FLAG:Ljava/lang/String; = "--service_writer_opt="


# instance fields
.field final dryRun:Z

.field final emitOptions:Z

.field final enumOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final javaOut:Ljava/lang/String;

.field final protoPath:Ljava/lang/String;

.field final quiet:Z

.field final registryClass:Ljava/lang/String;

.field final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final serviceWriter:Ljava/lang/String;

.field final serviceWriterOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final sourceFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/util/Set;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .parameter "protoPath"
    .parameter "javaOut"
    .parameter
    .parameter
    .parameter "registryClass"
    .parameter "emitOptions"
    .parameter
    .parameter "serviceWriter"
    .parameter
    .parameter "quiet"
    .parameter "dryRun"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, sourceFileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, roots:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p7, enumOptions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p9, serviceWriterOptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/squareup/wire/CommandLineOptions;->protoPath:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/squareup/wire/CommandLineOptions;->javaOut:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/squareup/wire/CommandLineOptions;->sourceFileNames:Ljava/util/List;

    .line 48
    iput-object p4, p0, Lcom/squareup/wire/CommandLineOptions;->roots:Ljava/util/List;

    .line 49
    iput-object p5, p0, Lcom/squareup/wire/CommandLineOptions;->registryClass:Ljava/lang/String;

    .line 50
    iput-boolean p6, p0, Lcom/squareup/wire/CommandLineOptions;->emitOptions:Z

    .line 51
    iput-object p7, p0, Lcom/squareup/wire/CommandLineOptions;->enumOptions:Ljava/util/Set;

    .line 52
    iput-object p8, p0, Lcom/squareup/wire/CommandLineOptions;->serviceWriter:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/squareup/wire/CommandLineOptions;->serviceWriterOptions:Ljava/util/List;

    .line 54
    iput-boolean p10, p0, Lcom/squareup/wire/CommandLineOptions;->quiet:Z

    .line 55
    iput-boolean p11, p0, Lcom/squareup/wire/CommandLineOptions;->dryRun:Z

    .line 56
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 20
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/wire/WireException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v8, 0x0

    .line 104
    .local v8, index:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v16, sourceFileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v15, serviceWriterOptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v13, roots:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 108
    .local v3, emitOptions:Z
    const/4 v10, 0x0

    .line 109
    .local v10, protoPath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, javaOut:Ljava/lang/String;
    const/4 v12, 0x0

    .line 111
    .local v12, registryClass:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, enumOptionsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 113
    .local v14, serviceWriter:Ljava/lang/String;
    const/4 v11, 0x0

    .line 114
    .local v11, quiet:Z
    const/4 v2, 0x0

    .line 116
    .local v2, dryRun:Z
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 117
    aget-object v17, p1, v8

    const-string v18, "--proto_path="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 118
    aget-object v17, p1, v8

    const-string v18, "--proto_path="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 149
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 119
    :cond_0
    aget-object v17, p1, v8

    const-string v18, "--java_out="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 120
    aget-object v17, p1, v8

    const-string v18, "--java_out="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 121
    :cond_1
    aget-object v17, p1, v8

    const-string v18, "--files="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 122
    new-instance v7, Ljava/io/File;

    aget-object v17, p1, v8

    const-string v18, "--files="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v7, files:Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/util/Scanner;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v18, "\\A"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 129
    .local v6, fileNames:[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 126
    .end local v6           #fileNames:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 127
    .local v5, ex:Ljava/io/FileNotFoundException;
    new-instance v17, Lcom/squareup/wire/WireException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error processing argument "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, p1, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/squareup/wire/WireException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 130
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #files:Ljava/io/File;
    :cond_2
    aget-object v17, p1, v8

    const-string v18, "--roots="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 131
    aget-object v17, p1, v8

    const-string v18, "--roots="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/squareup/wire/CommandLineOptions;->splitArg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 132
    :cond_3
    aget-object v17, p1, v8

    const-string v18, "--registry_class="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 133
    aget-object v17, p1, v8

    const-string v18, "--registry_class="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 134
    :cond_4
    aget-object v17, p1, v8

    const-string v18, "--no_options"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 135
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 136
    :cond_5
    aget-object v17, p1, v8

    const-string v18, "--enum_options="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 137
    aget-object v17, p1, v8

    const-string v18, "--enum_options="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/squareup/wire/CommandLineOptions;->splitArg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 138
    :cond_6
    aget-object v17, p1, v8

    const-string v18, "--service_writer="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 139
    aget-object v17, p1, v8

    const-string v18, "--service_writer="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 140
    :cond_7
    aget-object v17, p1, v8

    const-string v18, "--service_writer_opt="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 141
    aget-object v17, p1, v8

    const-string v18, "--service_writer_opt="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 142
    :cond_8
    aget-object v17, p1, v8

    const-string v18, "--quiet"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 143
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 144
    :cond_9
    aget-object v17, p1, v8

    const-string v18, "--dry_run"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 145
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 147
    :cond_a
    aget-object v17, p1, v8

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 152
    :cond_b
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/squareup/wire/CommandLineOptions;->protoPath:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/squareup/wire/CommandLineOptions;->javaOut:Ljava/lang/String;

    .line 154
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/CommandLineOptions;->sourceFileNames:Ljava/util/List;

    .line 155
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/squareup/wire/CommandLineOptions;->roots:Ljava/util/List;

    .line 156
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/squareup/wire/CommandLineOptions;->registryClass:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/squareup/wire/CommandLineOptions;->emitOptions:Z

    .line 158
    new-instance v17, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/CommandLineOptions;->enumOptions:Ljava/util/Set;

    .line 159
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/squareup/wire/CommandLineOptions;->serviceWriter:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/squareup/wire/CommandLineOptions;->serviceWriterOptions:Ljava/util/List;

    .line 161
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/squareup/wire/CommandLineOptions;->quiet:Z

    .line 162
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/squareup/wire/CommandLineOptions;->dryRun:Z

    .line 163
    return-void
.end method

.method private static splitArg(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .parameter "arg"
    .parameter "flagLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
